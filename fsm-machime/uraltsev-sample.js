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
    # will be the initial state.
    trigger: task_submitted
    transitionTo: running

  ####################
  ## RUNNING
  ####################

  - state: running
    actions:
      - enter:
        do: processTaskAsync
        message: entering running state
      - exit: abc
        message: leaving running state
      - exit: abc
        message: another message, showing we can stack multiple action on entry or exit
        #do: something_weird

    # enter(state,context) => processTaaskAsync(context.eventPayload)

      - trigger: success
        transitionTo: succeeded
        # event/trigger based.

      - trigger: failed
        transitionTo: failed

      - timer: 300
        transitionTo: timed-out

      - trigger: default
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
      - message: successfuly posted. Congratulations.
        type: enter

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
