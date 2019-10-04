.class public final Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;
.super Lcom/farsitel/bazaar/data/entity/PageCell;
.source "Page.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/data/entity/PageCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HamiCell"
.end annotation


# instance fields
.field public final app:Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;

.field public final image:Ljava/lang/String;

.field public final inlineXml:Ljava/lang/String;

.field public final jsonReferrer:Ljava/lang/String;

.field public final layoutAttribute:Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;

.field public final link:Ljava/lang/String;

.field public final shortDescription:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/data/entity/PageCell;-><init>(Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->link:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->inlineXml:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->jsonReferrer:Ljava/lang/String;

    iput-object p6, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->image:Ljava/lang/String;

    iput-object p7, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->app:Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;

    iput-object p8, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->shortDescription:Ljava/lang/String;

    iput-object p9, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->layoutAttribute:Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->type:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->link:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->title:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->inlineXml:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->jsonReferrer:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->image:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->app:Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->shortDescription:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->layoutAttribute:Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;)Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->inlineXml:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->jsonReferrer:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->app:Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->layoutAttribute:Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;)Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;
    .locals 11

    const-string v0, "type"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    move-object v3, p2

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object v4, p3

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;

    move-object v1, v0

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->link:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->link:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->inlineXml:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->inlineXml:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->jsonReferrer:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->jsonReferrer:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->image:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->image:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->app:Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->app:Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->shortDescription:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->shortDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->layoutAttribute:Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->layoutAttribute:Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getApp()Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->app:Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;

    return-object v0
.end method

.method public final getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final getInlineXml()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->inlineXml:Ljava/lang/String;

    return-object v0
.end method

.method public final getJsonReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->jsonReferrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getLayoutAttribute()Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->layoutAttribute:Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;

    return-object v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->type:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->link:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->inlineXml:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->jsonReferrer:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->image:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->app:Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->shortDescription:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->layoutAttribute:Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HamiCell(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inlineXml="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->inlineXml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jsonReferrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->jsonReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->app:Lcom/farsitel/bazaar/data/entity/PageCell$AppCell;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shortDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->shortDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", layoutAttribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageCell$HamiCell;->layoutAttribute:Lcom/farsitel/bazaar/data/entity/PageHamiLayoutAttribute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
