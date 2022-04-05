# frozen_string_literal: true

require "jekyll"
require "jekyll_plugin_logger"
require_relative "jekyll_basename_dirname/version"

# @author Copyright 2020 Michael Slinn
# @license SPDX-License-Identifier: Apache-2.0
#
# Jekyll filters for working with paths.
module JekyllBasenameDirnameName
  PLUGIN_NAME = "jekyll_basename_dirname"

  _logger = PluginMetaLogger.instance.new_logger(self, PluginMetaLogger.instance.config)

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
    File.basename(filepath).split(".")[0...-1].join(".")
  end
end

PluginMetaLogger.instance.info { "Loaded #{JekyllBasenameDirnameName::PLUGIN_NAME} v#{JekyllBasenameDirnameVersion::VERSION} plugin." }
Liquid::Template.register_filter(JekyllBasenameDirnameName)
