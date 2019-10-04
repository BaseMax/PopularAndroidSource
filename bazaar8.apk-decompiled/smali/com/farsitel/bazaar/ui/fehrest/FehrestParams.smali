.class public final Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;
.super Ljava/lang/Object;
.source "FehrestParams.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final pageItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;"
        }
    .end annotation
.end field

.field public final referrer:Ljava/lang/String;

.field public final showAnimation:Z

.field public final showBackButton:Z

.field public final slug:Ljava/lang/String;

.field public final titleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "slug"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageItems"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->slug:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->pageItems:Ljava/util/List;

    iput-object p3, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->titleName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->showBackButton:Z

    iput-boolean p5, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->showAnimation:Z

    iput-object p6, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->referrer:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;ILh/f/b/f;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 2
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move v4, p4

    :goto_0
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move v5, p5

    :goto_1
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_4

    .line 3
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p6

    :cond_4
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->pageItems:Ljava/util/List;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->showAnimation:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->titleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->referrer:Ljava/lang/String;

    return-object v0
.end method
