::Spina::Theme.register do |theme|

  theme.name = 'default'
  theme.title = 'Demo theme'

  theme.page_parts = [{
    name:           'line',
    title:          'Line',
    partable_type:  'Spina::Line'
  }, {
    name:           'text',
    title:          'Text',
    partable_type:  'Spina::Text'
  }, {
    name:           'photo',
    title:          'Photo',
    partable_type:  'Spina::Photo'
  }, {
    name:           'photo_collection',
    title:          'Photo collection',
    partable_type:  'Spina::PhotoCollection'
  }, {
    name:           'attachment',
    title:          'Attachment',
    partable_type:  'Spina::Attachment'
  }, {
    name:           'attachment_collection',
    title:          'Attachment collection',
    partable_type:  'Spina::AttachmentCollection'
  }, {
    name:           'publication_list',
    title:          'Structure',
    partable_type:  'Spina::Structure'
  }, {
    name:           'color',
    title:          'Color',
    partable_type:  'Spina::Color'
  },
  {
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
  }]

  theme.structures = [{
    name: 'publication_list',
    structure_parts: [{
      name:           'title',
      title:          'Title',
      partable_type:  'Spina::Line'
    }, {
      name:           'description',
      title:          'Description',
      partable_type:  'Spina::Text'
    }]
  }]

  theme.layout_parts = [{
    name:           'line',
    title:          'Line',
    partable_type:  'Spina::Line'
  }, {
    name:           'color',
    title:          'Color',
    partable_type:  'Spina::Color'
  }]

  theme.view_templates = [{
    name: 'homepage',
    title: 'Homepage',
    page_parts: ['text'],
  }, 
  {
    name: 'about-us',
    title: 'About Us',
    usage: 'Use for your content',
    page_parts: ['mission_statement', 'rachel_bio', 'lisa_bio']
  }, 
  {
    name: 'publications',
    title: 'Publications',
    description: 'Contains examples of every page part',
    page_parts: ['publication_list'] 
  },  
  {
    name: 'customized-workshops',
    title: 'Customized workshops',
    description: 'Contains examples of every page part',
    page_parts: [] 
  },
  {
    name: 'one-one-one-coaching',
    title: 'One-on-One Coaching',
    description: 'Contains examples of every page part',
    page_parts: [] 
  },
  {
    name: 'webinar',
    title: 'Webinar',
    description: '8 session webinar',
    page_parts: []
  }
]

  theme.custom_pages = [{
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
      deletable:      true,
      view_template:  'webinar'
    }
  ]

  theme.plugins = []

end