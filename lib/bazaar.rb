require 'bazaar/version'

module Bazaar
  def self.item(options = {})
    get_item('items', options).humanize
  end
  def self.adj(options = {})
    get_item('adj', options).humanize
  end
  def self.object(options = {})
    "#{ get_item('adj', options) } #{ get_item('items') }".humanize
  end
  def self.super_item(options = {})
    get_item('superitems', options).humanize
  end
  def self.super_adj(options = {})
    get_item('superadj', options).humanize
  end
  def self.super_object(options = {})
     "#{ get_item('superadj', options) } #{ get_item('superitems', options) }".humanize
  end
  def self.heroku(options = {})
    "#{ get_item('superadj', options) }-#{ get_item('superitems', options) }-#{ rand(0-9999) }"
  end
  def self.anonymous_animal(options={})
    "anonymous #{ get_item('animals',options) }".humanize 
  end
  def self.adjective_animal(options={})
    "#{ get_item('superadj',options) } #{ get_item('animals',options) }".humanize
  end
  def self.get_item(filename, options = {})
    items = File.read(File.expand_path("../bazaar/#{filename}.txt", __FILE__)).split("\n")
    items.select!{ |item| item.length <= options[:max_length] } if options[:max_length]
    items.select!{|item | item[0,1] == options[:start_with]} if options[:start_with]
    items.sample
  end
end
