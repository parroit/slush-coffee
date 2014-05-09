###
 <%= appNameSlug %>
 https://github.com/<%= userName %>/<%= appNameSlug %>
 
 Copyright (c) 2014 <%= authorName %>
 Licensed under the <%= license %> licence.
###
chai = require 'chai'
chai.should();

<%= appNameSlug %> = require '../lib/index'

describe '<%= appNameSlug %>', ()->
    it 'is defined' ,()->
        <%= appNameSlug %>.should.be.a 'object'
    