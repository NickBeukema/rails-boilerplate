def em(&blk)
  wait_for_ajax_completion
  wait_for_ember_run_loop_to_complete
  blk.call
  wait_for_ajax_completion
  wait_for_ember_run_loop_to_complete
end

def click_css(*args)
  find(*args).click
end
