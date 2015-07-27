class Post
  attr_accessor :id, :title, :body, :summary, :author, :created_at

  def initialize(hash)
    @id         = hash[:id]
    @title      = hash[:title]
    @body       = hash[:body]
    @summary    = hash[:summary]
    @author     = hash[:author]
    @created_at = hash[:created_at] || Time.now
  end

  def self.all
    unless defined?(@@posts)
      @@posts = [
          Post.new(
            :id         => 1,
            :title      => "Zim Rules!",
            :body       => "I'm a rogue demon hunter now. You are talking crazy-person talk. Put your words in word places please. The lambs have passed through the gate. It's a real burn, being right so often. Uh, thermal exhaust port's above the main port, numbnuts.",
            :summary    => "A blog post about the greatness of Zim",
            :author     => "zim fan 007",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 2,
            :title      => "Dib always whines",
            :body       => "What gives you the right to suck face with your demon lover again? My entire existence was constructed by a sociopath in a sweater vest; what do you suggest I do? What do they need such good eyesight for anyway? Like, is the hippo going,'Hey, man, where are my pants? I have my hippo dignity!' And I understand with perfect clarity exactly what you are. Can't call to mom, can't say a word. You are talking crazy-person talk. Put your words in word places please. Who's calling me? Everybody I know lives here. Did the primary buffer panel just fall off my Gorram ship for no apparent reason?",
            :summary    => "Dislikes whiners",
            :author     => "furious01",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 3,
            :title      => "Burritos!",
            :body       => "We're outlaws with hearts of gold. The brain is kept in a fear-induced, adrenaline-fueled overdrive state, like a problem you can't solve. What, you think this isn't real just because of all the vampires, and demons, and ex-vengeance demons, and the sister that used to be a big ball of universe-destroying energy? Darn your sinister attraction! My Uncle Rory was the stodgiest taxidermist you've ever met by day. One of my personalities happens to be a multiple personality, but that doesn't make me a multiple personality. You can't spend the rest of your life waiting for Xander to wake up and smell the hottie. Easy as really difficult pie. Anyway, he seemed to be having a kind of man-reaction.",
            :summary    => "Laughing about a robots love for food",
            :author     => "Sue Slim",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 4,
            :title      => "Gaz is so cool",
            :body       => "Did the primary buffer panel just fall off my Gorram ship for no apparent reason? I am never gonna see a merman, ever. I think calling him that is an insult to the psychotic lowlife community. If you say 'adorabubble,' I'm leaving. Say Skywalker, and I smack ya. Sarcastic? Unfeeling? British? I mean, don't get me wrong, I heart my porn, but this is cool! Wash, we've got some local color happening.",
            :summary    => "Girls Rule!",
            :author     => "Sallie Silver",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 5,
            :title      => "I wish  I had a Gir",
            :body       => "Rorschach would say you have a hard time relating to others. Somehow, I doubt that. You have a good heart, Dexter. I'm going to tell you something that I've never told anyone before.",
            :summary    => "How fun Gir can be",
            :author     => "morpheus27",
            :created_at => (1..10).to_a.sample.months.ago
          )
      ]
    end
    @@posts
  end

  def self.find(id)
    all.select{|post| post.id == id}.first
  end


end
