const yaml_def = `

#    Event-based, time-based, and Promise-based triggers/actions
#    Entry, exit, and transition actions
#    Guard conditions
#    Self-transitions and internal transitions
#    Hierarchical state machines
#    State machine event hooks


name: uraltsev-002
parser: uraltsev
link: https://github.com/nickuraltsev/finity
exit_states:


states:

  #########################################################################
  #
  #      READY
  # - is the first (initial) state when dd-collector opens.
  # - each click on the map creates a transition to 'feature-selected'
  # -  "trigger: something" same as "on: something"
  #
  #########################################################################

  - state: ready
    actions:
      - trigger: select-feature
        transitionTo: selected



  #########################################################################
  #
  #       SELECTED
  #
  #########################################################################

  - state: selected
    actions:
      - on: Enter
        message: a feature is selected
        do: wfs-fetch-feature
        # enter(state,context) => wfs_fetch(context.eventPayload)


      - on: Exit
        message: leaving selected

      - on: Exit
        message: another message, showing we can stack multiple action on entry or exit
        #do: something_weird


      - on: edit-feature
        transitionTo: feature-editing
        # event/trigger based.

      - on: quit
        transitionTo: ready

      - onTimeOut: 300
        message: onEnter call to wfs got a time-out.
        transitionTo: timed-out

  #########################################################################
  #
  #       Feature-Editing
  #
  #       - the form is open
  #       - 'onEnter' is fetching PostGis for full data on the feature
  #
  #########################################################################


  - state: feature-editing
    actions:
      - on: enter
        do: fetch_PostGis
        message: fetching PostGis to get full data.

      - on: success
        message: >
          postgis-data is available, we stay on same state
          expecting user to fill/edit the form
          then commit or quit.

      - on: failed
        message: this is an automatic transition based on fetch-PostGis result
        goto: failed

      - timer: 2000
        message: PostGis is not anwsering.
        goto: timed-out

      - on: commit
        goto: committing


  #########################################################################
  #
  #       COMMITING
  #
  #       - the form is open
  #       - 'onEnter' is fetching PostGis for full data on the feature
  #
  #########################################################################


  - state: committing
    actions:
      - on: Enter
        message: commit on Postgis
        do: postgis::commit

      - timeout: 3000
        goto timeout

      - on: error
        goto feature-editing
        message: error message is showing - return to editing on the form

      - on: succes
        goto: ready
        message: >
          this is an automatic transition based on postgis::commit results
          congratulation - you are now back to starting point.



  ####################
  ## TIMED-OUT
  ####################

  - state: timeout

  ####################
  ## fatal-error FAILED
  ####################

  - state: failed
    actions:
      - on: Enter
        message: >
          this is unfortunate
          You should be mad.

`

export default yaml_def;
