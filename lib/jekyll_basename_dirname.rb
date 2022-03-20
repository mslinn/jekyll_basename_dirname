# frozen_string_literal: true

require "jekyll_plugin_logger"

# @author Copyright 2020 Michael Slinn
# @license SPDX-License-Identifier: Apache-2.0
#
# Jekyll filters for working with paths.
module Jekyll
  # Filters a string containing a path.
  # @return [String] the filename extracted from the path, including the filetype.
  # @example Extracts "filename.ext" from the path
  #   {{ "blah/blah/filename.ext" | basename }}
  def basename(filepath)
    File.basename(filepath)
  end

  # Filters a string containing a path.
  # @return [String] the portion of th path before the filename and extension.
  # @example Extracts "blah/blah" from the path.
  #   {{ "blah/blah/filename.ext" | dirname }}
  def dirname(filepath)
    File.dirname(filepath)
  end

  # Filters a string containing a path.
  # @return the filename without the extension.
  # @example Extracts "filename" from the path.
  #   {{ "blah/blah/filename.ext" | basename_without_extension }}
  def basename_without_extension(filepath)
    File.basename(filepath).split('.')[0...-1].join('.')
  end

  info { "Loaded jekyll_basename_dirname plugin." }
end

Liquid::Template.register_filter(Jekyll)
