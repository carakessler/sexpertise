module Spina
  module DefaultTheme
    include ::ActiveSupport::Configurable

    config_accessor :title, :structures, :page_parts, :view_templates, :layout_parts, :custom_pages, :plugins

    self.title = 'Default theme'

    self.page_parts = [{
      name:               'text',
      title:              'Text',
      page_partable_type: 'Spina::Text'
    },
    {
      name:               'mission_statement',
      title:              'Mission Statement',
      page_partable_type: 'Spina::Text'
    },
    {
      name:               'rachel_bio',
      title:              'Rachels Bio',
      page_partable_type: 'Spina::Text'
    },
    {
      name:               'lisa_bio',
      title:              'Lisas Bio',
      page_partable_type: 'Spina::Text'
    }
    ]

    self.structures = [{
      name: 'publication_list',
      structure_parts: [
        {
          name:           'title',
          title:          'Title',
          partable_type:  'Spina::Text'
        }
      ]
    }]

    self.view_templates = {
      'homepage' => {
        title:      'Homepage',
        page_parts: ['text']
      },
      'about-us' => {
        title:        'About Us',
        description:  'About us page',
        usage:        'Use for your content',
        page_parts:   ['mission_statement', 'rachel_bio', 'lisa_bio']
      },
      'publications' => {
        title:        'Publications',
        description:  'Publications page',
        usage:        'Use for your content',
        page_parts:   ['publication_list'] 
      },
      'customized-workshops' => {
        title:        'Customized workshops',
        description:  'Customized workshops page',
        usage:        'Use for your content',
        page_parts:   []
      },
      'one-one-one-coaching' => {
        title:        'One-on-One Coaching',
        description:  'One-on-One Coaching page',
        usage:        'Use for your content',
        page_parts:   []
      },
      'show' => {
        title:        'Default',
        description:  'Default page',
        usage:        'Use for your content',
        page_parts:   []
      },
      'webinar' => {
        title:        'Webinar',
        description:  '8 session webinar',
        usage:        'Use for your content',
        page_parts:   []
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
    },    
    {
      name:           'publications',
      title:          'Publications',
      deletable:      false,
      view_template:  'publications'
    },
    {
      name:           'customized-workshops',
      title:          'Customized workshops',
      deletable:      false,
      view_template:  'customized-workshops'
    },    
    {
      name:           'one-one-one-coaching',
      title:          'One-on-One Coaching',
      deletable:      false,
      view_template:  'one-one-one-coaching'
    },    
    {
      name:           'webinar',
      title:          '8 session webinar',
      deletable:      false,
      view_template:  'webinar'
    }
    ]

    self.plugins = []

  end
end

theme = Spina::Theme.new
theme.name = 'default'
theme.config = Spina::DefaultTheme.config
Spina.register_theme(theme)
