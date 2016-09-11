module Spina
  module DefaultTheme
    include ::ActiveSupport::Configurable

    config_accessor :title, :page_parts, :view_templates, :layout_parts, :custom_pages, :plugins, :structures

    self.title = 'Default theme'

    self.page_parts = [{
      name:               'text',
      title:              'Text',
      page_partable_type: 'Spina::Text'
    },
    {
      name:               'mission-statement',
      title:              'Mission Statement',
      page_partable_type: 'Spina::Text'
    },
    {
      name:               'rachel-bio',
      title:              'Rachels Bio',
      page_partable_type: 'Spina::Text'
    },
    {
      name:               'lisa-bio',
      title:              'Lisas Bio',
      page_partable_type: 'Spina::Text'
    },

    ]

    self.structures = {}

    self.layout_parts = []

    self.view_templates = {
      'homepage' => {
        title:      'Homepage',
        page_parts: ['text']
      },
      'about-us' => {
        title:        'About Us',
        description:  'About us page',
        usage:        'Use for your content',
        page_parts:   ['mission-statement', 'rachel-bio', 'lisa-bio']
      },
      'show' => {
        title:        'Default',
        description:  'Default page',
        usage:        'Use for your content',
        page_parts:   ['text']
      }
    }

    self.custom_pages = [{
      name:           'homepage',
      title:          'Homepage',
      deletable:      false,
      view_template:  'homepage'
    },
    {
      name:           'about-us',
      title:          'About Us',
      deletable:      false,
      view_template:  'about-us'
    }
    ]

    self.plugins = []

  end
end

theme = Spina::Theme.new
theme.name = 'default'
theme.config = Spina::DefaultTheme.config
Spina.register_theme(theme)
