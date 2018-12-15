# frozen_string_literal: true

module ApplicationHelper

  # Creates a link for Show
  #
  # @param path [String] path for show
  def link_to_show(path)
    link_to path,
            class: "btn btn-info btn-sm",
            title: "Visualizar",
            style: "color: #FFF; float: none;" do
      content_tag :span, class: "fa fa-search" do
      end
    end
  end

  # Creates a link for edit
  #
  # @param path [String] path for edit
  # @param options [String] path for edit
  def link_to_edit(path, *options)
    link_to path,
            class: "btn btn-warning btn-sm",
            title: "Alterar",
            style: "color: #FFF; " do
      content_tag :span, class: "fas fa-edit" do
        options.first[:label] if options.present? && options.first[:label]
      end

    end
  end

  # Creates a link for delete
  #
  # @param path [String] path for delete
  def link_to_delete(path)
    link_to path,
            method: "delete",
            class: "btn btn-danger btn-sm",
            title: "Excluir",
            data: { confirm: label_translate(:confirm_delete),
                    'confirm-button-text': "Confirmar",
                    'cancel-button-text': "Cancelar",
                    'confirm-button-color': "#66CD00",
                    'cancel-button-color': "#ff0000",
                    'sweet-alert-type': "warning",
            },
            style: "color: #FFF; float: none;" do
      content_tag :span, class: "fas fa-trash-alt" do
      end
    end
  end

  # Retorna valor Active ou Inactive
  # @param [Boolean] value
  # @return [String] Active or Inactive
  def active_inative(value)
    value ? label_translate(:active) : label_translate(:inactive)
  end

end
