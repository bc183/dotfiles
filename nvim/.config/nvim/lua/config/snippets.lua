-- LuaSnip snippets configuration
local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Helper function to get current date
local function get_date()
  return os.date '%Y-%m-%d'
end

-- Helper function to get current time
local function get_time()
  return os.date '%H:%M'
end

-- Neorg snippets
ls.add_snippets('norg', {
  -- Task items
  s('task', {
    t '- ( ) ',
    i(1, 'task description'),
  }),
  s('done', {
    t '- (x) ',
    i(1, 'completed task'),
  }),
  s('pending', {
    t '- (?) ',
    i(1, 'pending task'),
  }),
  s('important', {
    t '- (!) ',
    i(1, 'important task'),
  }),
  s('cancelled', {
    t '- (-) ',
    i(1, 'cancelled task'),
  }),

  -- Headings
  s('h1', {
    t '* ',
    i(1, 'Heading 1'),
  }),
  s('h2', {
    t '** ',
    i(1, 'Heading 2'),
  }),
  s('h3', {
    t '*** ',
    i(1, 'Heading 3'),
  }),
  s('h4', {
    t '**** ',
    i(1, 'Heading 4'),
  }),

  -- Code block
  s('code', {
    t { '@code ', '' },
    i(1, 'code here'),
    t { '', '@end' },
  }),
  s('codelang', {
    t '@code ',
    i(1, 'language'),
    t { '', '' },
    i(2, 'code here'),
    t { '', '@end' },
  }),

  -- Links
  s('link', {
    t '{:$/',
    i(1, 'path'),
    t ':}[',
    i(2, 'description'),
    t ']',
  }),
  s('url', {
    t '{https://',
    i(1, 'url'),
    t '}[',
    i(2, 'description'),
    t ']',
  }),

  -- Date and time
  s('date', {
    f(get_date, {}),
  }),
  s('time', {
    f(get_time, {}),
  }),
  s('datetime', {
    f(function()
      return get_date() .. ' ' .. get_time()
    end, {}),
  }),

  -- Todo section template
  s('todos', {
    t { '** Tasks', '' },
    t '- ( ) ',
    i(1, 'task 1'),
    t { '', '- ( ) ' },
    i(2, 'task 2'),
    t { '', '- ( ) ' },
    i(3, 'task 3'),
  }),

  -- Meeting notes template
  s('meeting', {
    t '* Meeting - ',
    i(1, 'topic'),
    t { '', '' },
    f(function()
      return '** ' .. get_date() .. ' ' .. get_time()
    end, {}),
    t { '', '', '** Attendees', '- ' },
    i(2, 'attendee'),
    t { '', '', '** Notes', '- ' },
    i(3, 'note'),
    t { '', '', '** Action Items', '- ( ) ' },
    i(4, 'action item'),
  }),

  -- Quote
  s('quote', {
    t '> ',
    i(1, 'quote text'),
  }),

  -- Divider
  s('div', {
    t '---',
  }),
})
