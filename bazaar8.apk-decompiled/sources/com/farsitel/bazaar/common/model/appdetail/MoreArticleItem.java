package com.farsitel.bazaar.common.model.appdetail;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;
import java.util.List;

/* compiled from: ViewHolderItem.kt */
public final class MoreArticleItem implements RecyclerData {
    public final List<ArticleItem> articles;
    public final int viewType = AppDetailViewItemType.MORE_ARTICLE.ordinal();

    public MoreArticleItem(List<ArticleItem> list) {
        j.b(list, "articles");
        this.articles = list;
    }

    public static /* synthetic */ MoreArticleItem copy$default(MoreArticleItem moreArticleItem, List<ArticleItem> list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = moreArticleItem.articles;
        }
        return moreArticleItem.copy(list);
    }

    public final List<ArticleItem> component1() {
        return this.articles;
    }

    public final MoreArticleItem copy(List<ArticleItem> list) {
        j.b(list, "articles");
        return new MoreArticleItem(list);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof MoreArticleItem) && j.a((Object) this.articles, (Object) ((MoreArticleItem) obj).articles));
    }

    public final List<ArticleItem> getArticles() {
        return this.articles;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        List<ArticleItem> list = this.articles;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "MoreArticleItem(articles=" + this.articles + ")";
    }
}
