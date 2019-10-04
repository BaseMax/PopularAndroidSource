.class public abstract Lcom/farsitel/bazaar/data/entity/SearchPrediction;
.super Ljava/lang/Object;
.source "Search.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/data/entity/SearchPrediction$History;,
        Lcom/farsitel/bazaar/data/entity/SearchPrediction$Normal;
    }
.end annotation


# instance fields
.field public final referrer:Ljava/lang/String;

.field public final subtitle:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/entity/SearchPrediction;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/entity/SearchPrediction;->subtitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/entity/SearchPrediction;->referrer:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILh/f/b/f;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 3
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p3

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/farsitel/bazaar/data/entity/SearchPrediction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/farsitel/bazaar/data/entity/SearchPrediction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/SearchPrediction;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/SearchPrediction;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/SearchPrediction;->title:Ljava/lang/String;

    return-object v0
.end method
