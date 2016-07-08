createViewModel = require('./main-view-model').createViewModel

onNavigatingTo = (args) ->
  page = args.object
  page.bindingContext = createViewModel()
  return

exports.onNavigatingTo = onNavigatingTo
