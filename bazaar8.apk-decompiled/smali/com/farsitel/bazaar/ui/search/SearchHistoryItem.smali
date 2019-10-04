.class public final Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;
.super Ljava/lang/Object;
.source "SearchHistoryItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final referrer:Ljava/lang/String;

.field public final subtitle:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public type:Lcom/farsitel/bazaar/ui/search/SearchHistoryType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/ui/search/SearchHistoryType;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->subtitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->referrer:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->type:Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/farsitel/bazaar/ui/search/SearchHistoryType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->type:Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->type:Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method
