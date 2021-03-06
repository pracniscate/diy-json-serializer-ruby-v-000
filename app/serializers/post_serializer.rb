# turn object into JSON string

class PostSerializer
  def self.serialize(post)
    # start with { to create a valid JSON object
    serialized_post = '{'

    serialized_post += '"id": ' + post.id.to_s + ', '
    serialized_post += '"title": "' + post.title + '", '
    serialized_post += '"description": "' + post.description + '", '

    # the author association represented in JSON
    serialized_post += '"author": {'
    serialized_post += '"name": "' + post.author.name + '"}'

    # end the object
    serialized_post += '}'
  end
end