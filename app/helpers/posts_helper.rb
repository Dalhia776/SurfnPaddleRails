module PostsHelper

  def header_block(headline = "We Love Zim!", subhead = "A Blog about all things Invader Zim")
    render :partial => "header", :locals => {:hed => headline, :subhed => subhead}
  end

end
