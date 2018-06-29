::Spina::Theme.register do |theme|

  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.page_parts = [
    {name: 'intro_text', title: 'Intro Text', partable_type: 'Spina::Text'},
    {name: 'what_we_do_text', title: 'What We Do Text', partable_type: 'Spina::Text'},
    {name: 'gallery', title: 'Gallery Images', partable_type: 'Spina::Structure'},
    {name: 'end_text', title: 'Company Message', partable_type: 'Spina::Text'},
  ]

  theme.view_templates = [{
    name: 'homepage',
    title: 'Homepage',
    page_parts: ['intro_text', 'what_we_do_text', 'gallery', 'end_text']
  }, {
    name: 'show',
    title: 'Default',
    description: 'A simple page',
    usage: 'Use for your content',
    page_parts: ['text']
  }]

  theme.custom_pages = [{
    name:           'homepage',
    title:          'Homepage',
    deletable:      false,
    view_template:  'homepage'
  }]

  theme.navigations = [{
    name: 'mobile',
    label: 'Mobile'  
  }, {
    name: 'main',
    label: 'Main navigation',
    auto_add_pages: true
  }]

  theme.structures = [{
    name: 'gallery',
    structure_parts: [
      { name: 'title', title: 'Title', partable_type: 'Spina::Line' },
      { name: 'image', title: 'Image Asset URL', partable_type: 'Spina::Line' },
    ]
  }]

end
