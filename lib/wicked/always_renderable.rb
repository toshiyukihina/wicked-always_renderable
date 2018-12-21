require "wicked/always_renderable/version"

# Wicked invokes `redirect_to` instead of `render` if `jump_to` is called.
# This module provides the way to `render` always.
# 
# @example Just include `Wicked:AlwaysRenderable`.
#  class SomeWizardController < ApplicationController
#    include Wicked::Wizard
#    include Wicked::AlwaysRenderable
#    ... (snip) ...
#  end
module Wicked::AlwaysRenderable
  extend ActiveSupport::Concern

  # Override for invoking 'render' instead of 'redirect_to' at all time. 
  def render_wizard(resource = nil, options = {}, params = {})
    process_resource!(resource, options)

    @step = @skip_to || step
    set_previous_next(@step)

    render_step(wizard_value(step), options, params)
  end

  # Call `jump_to` and render the template.
  #
  # @param [String] step_to A step to jump
  def jump_to_render_wizard(step_to)
    jump_to step_to

    render_wizard
  end
end
