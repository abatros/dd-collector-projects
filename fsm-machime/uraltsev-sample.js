const yaml_def = `

#    Event-based, time-based, and Promise-based triggers/actions
#    Entry, exit, and transition actions
#    Guard conditions
#    Self-transitions and internal transitions
#    Hierarchical state machines
#    State machine event hooks


name: uraltsev-001
parser: uraltsev
link: https://github.com/nickuraltsev/finity
exit_states: failed timed-out success

global:
  enter: onStateEnter
  # callback : onStateEnter(state)

states:
  ####################
  ## READY
  ####################

  - state: ready
    # first declared state is the initial state.

    actions:
      - trigger: submit-a-task
        transitionTo: running

  ####################
  ## RUNNING
  ####################

  - state: running
    actions:
      - on: Enter
        do: processTaskAsync
        message: entering running state
        # enter(state,context) => processTaaskAsync(context.eventPayload)


      - on: Exit
        message: leaving running state

      - on: Exit
        message: another message, showing we can stack multiple action on entry or exit
        #do: something_weird


      - on: success
        transitionTo: succeeded
        # event/trigger based.

      - on: failed
        transitionTo: failed

      - onTimeOut: 300
        transitionTo: timed-out

      - on: default
        transitionTo: broken


  ####################
  ## SUCCESS
  ####################

  - state: succeeded
    actions:
      - on: enter
        do: fetchServer

      - on: success
        goto: posted

      - on: failed
        goto: failed

      - timer: 1000
        goto: timed-out


  ####################
  ## POSTED
  ####################

  - state: posted
    actions:
      - on: Enter
        message: successfuly posted. Congratulations.

  ####################
  ## TIMED-OUT
  ####################

  - state: timed-out

  ####################
  ## fatal-error FAILED
  ####################

  - state: failed

`

export default yaml_def;
