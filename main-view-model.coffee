Observable = require('data/observable').Observable

getMessage = (counter) ->
  if counter <= 0
    'Hoorraaay! You unlocked the NativeScript clicker achievement!'
  else
    counter + ' taps left'

createViewModel = ->
  viewModel = new Observable()
  viewModel.counter = 42
  viewModel.message = getMessage(viewModel.counter)

  viewModel.onTap = ->
    @counter--
    @set 'message', getMessage(@counter)
    return

  viewModel

exports.createViewModel = createViewModel
