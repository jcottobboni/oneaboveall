# frozen_string_literal: true

module TranslateHelper
  # Returns a model name translate pluralized
  #
  # @param class_name [String] class name
  def pluralize_model(class_name)
    I18n.t("activerecord.models.#{class_name.to_s.gsub('::', '/').downcase}").pluralize
  end

  # Returns the name of model translated
  #
  # @param class_name [String|Symbol] the name of model
  #
  # @return [String] translate of model
  def translate_model(class_name)
    I18n.t("activerecord.models.#{class_name.to_s.gsub('::', '/').downcase}")
  end

  # Returns a translate of model attribute
  #
  # @param class_name [String|Symbol] name of model
  # @param attr_name [String|Symbol]  name o attribute
  #
  # @return [String] translate of attribute
  def translate_attr(class_name, attr_name)
    I18n.t("activerecord.attributes.#{class_name.to_s.gsub('::', '/').downcase}.#{attr_name}")
  end

  # Returns a translated attribute of model
  #
  # @param class_name [String|Symbol] name of model
  # @param enum_name [String|Symbol]  name of attribute
  # @param enum_value [String|Symbol] name of attribute
  # @return [String]  translate of enum attribute
  def translate_enum_name(class_name, enum_name, enum_value)
    return nil unless enum_value
    I18n.t("activerecord.attributes.#{class_name.to_s.gsub('::', '/').downcase}.#{enum_name}.#{enum_value}")
  end

  #  Returns a translated label
  #
  # @param label_name [String|Symbol] name of label
  #
  # @return [String] translated label
  def label_translate(label_name)
    I18n.t("labels.#{label_name}")
  end

  # Returns a translate flash_message
  #
  # @param message_name [String|Symbol] name of flash_message
  #
  # @return [String] translate of flash_message
  def flash_messages_translate(message_name)
    I18n.t("flash_messages.#{message_name}")
  end
end
