local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.expand_conditions")




ls.add_snippets("all", {
  s("fakeint", { f(function() return tostring(vim.fn['fake#int']()) end) }),
  s("fakefloat", { f(function() return tostring(vim.fn['fake#float']()) end) }),
  s("fakeint0-100", { f(function() return tostring(vim.fn['fake#int'](0, 100)) end) }),
  s("fakepassword8", { f(function() return tostring(vim.fn['fake#chars'](8)) end) }),
  s("fakenumbers4", { f(function() return tostring(vim.fn['fake#chars'](4, '\\d')) end) }),
  s("fakeage", { f(function() return tostring(vim.fn['fake#gen']('age')) end) }),
  s("fakemale", { f(function() return tostring(vim.fn['fake#gen']('male_name')) end) }),
  s("fakefemale", { f(function() return tostring(vim.fn['fake#gen']('female_name')) end) }),
  s("fakesurname", { f(function() return tostring(vim.fn['fake#gen']('surname')) end) }),
  s("fakename", { f(function() return tostring(vim.fn['fake#gen']('name')) end) }),
  s("fakefullname", { f(function() return tostring(vim.fn['fake#gen']('fullname')) end) }),
  s("fakeuser", { f(function() return tostring(vim.fn.tolower(vim.fn['fake#gen']('name'))) end) }),
  s("fakeemail", { f(function() return tostring(vim.fn['fake#gen']('email')) end) }),
  s("fakesentense", { f(function() return tostring(vim.fn['fake#gen']('sentense')) end) }),
  s("fakeparagraph", { f(function() return tostring(vim.fn['fake#gen']('paragraph')) end) }),
  s("fakecountry", { f(function() return tostring(vim.fn['fake#gen']('country')) end) }),
  s("fakeword", { f(function() return tostring(vim.fn['fake#gen']('word')) end) }),
  s("fakejob", { f(function() return tostring(vim.fn['fake#gen']('job')) end) }),
  s("fakesex", { f(function() return tostring(vim.fn['fake#gen']('sex')) end) }),
  s("fakelipsum", { f(function() return tostring(vim.fn['fake#gen']('lipsum')) end) }),
  s("fakegtld", { f(function() return tostring(vim.fn['fake#gen']('gtld')) end) }),
})

-- snippet fakeparagraph
-- `substitute(fake#gen('paragraph'), '\v(.{70}\S*)\s+', "\\1\n", 'g')`
