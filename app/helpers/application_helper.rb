module ApplicationHelper
  def title(page_title = "滴滴住宿")
    content_for :title, page_title.to_s
  end
  def keywords(page_keywords = "滴滴住宿")
    content_for :keywords, page_keywords.to_s
  end
  def head_desc(page_descriptions = "")
    content_for :head_desc, page_descriptions.to_s
  end
  def mobile_url(domain, path)
    content_for :mobile_url, "http://#{domain}#{path}/"
  end
end
