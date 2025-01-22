package components

import org.dom4j.io.SAXReader

def url = contentModel.feedUrl_s
def rssText = url.toURL().text

def rssDoc = new SAXReader().read(new StringReader(rssText)).getRootElement()

def feed = []

rssDoc.channel.item.each { item ->
    def entry = [:]
    entry.title = item.title
    entry.description = item.description
    entry.link = item.link
    entry.pubDate = item.pubDate
    def optImg = item."media:content"
    if (optImg && optImg."@medium" != null && optImg."@medium".text == "image") {
        entry.img = optImg."@url"
    } else {
        optImg = item.enclosure
        if (optImg && optImg."@type" != null && optImg."@type".text.startsWith("image/")) {
            entry.img = optImg."@url"
        }
    }
    if (feed.size() < 6) {
        feed.add(entry)
    }
}

templateModel.feed = feed
