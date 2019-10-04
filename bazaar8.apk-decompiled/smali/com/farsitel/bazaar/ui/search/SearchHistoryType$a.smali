.class public final Lcom/farsitel/bazaar/ui/search/SearchHistoryType$a;
.super Ljava/lang/Object;
.source "SearchHistoryItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/ui/search/SearchHistoryType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/ui/search/SearchHistoryType$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/farsitel/bazaar/ui/search/SearchHistoryType;
    .locals 6

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;->NONE:Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;->values()[Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;->NONE:Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    return-object p1
.end method
