.class public final Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;
.super Ljava/lang/Object;
.source "PageItem.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final _backgroundColor:Ljava/lang/String;

.field public final _endGradientColor:Ljava/lang/String;

.field public final _startGradientColor:Ljava/lang/String;

.field public final _textColor:Ljava/lang/String;

.field public final backgroundColor:Ljava/lang/String;

.field public final endGradientColor:Ljava/lang/String;

.field public final startGradientColor:Ljava/lang/String;

.field public final textColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_backgroundColor:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_textColor:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_startGradientColor:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_endGradientColor:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_backgroundColor:Ljava/lang/String;

    invoke-static {p1}, Lc/c/a/c/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->backgroundColor:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_startGradientColor:Ljava/lang/String;

    invoke-static {p1}, Lc/c/a/c/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->startGradientColor:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_endGradientColor:Ljava/lang/String;

    invoke-static {p1}, Lc/c/a/c/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->endGradientColor:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_textColor:Ljava/lang/String;

    invoke-static {p1}, Lc/c/a/c/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->textColor:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILh/f/b/f;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method private final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_textColor:Ljava/lang/String;

    return-object v0
.end method

.method private final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_startGradientColor:Ljava/lang/String;

    return-object v0
.end method

.method private final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_endGradientColor:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_backgroundColor:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_textColor:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_startGradientColor:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_endGradientColor:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_backgroundColor:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_backgroundColor:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_textColor:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_textColor:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_startGradientColor:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_startGradientColor:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_endGradientColor:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_endGradientColor:Ljava/lang/String;

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

.method public final getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->startGradientColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->endGradientColor:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    aput v0, v3, v4

    const/4 v0, 0x1

    .line 4
    iget-object v4, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->endGradientColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 5
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->backgroundColor:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final getTextColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->textColor:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_backgroundColor:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_textColor:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_startGradientColor:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_endGradientColor:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageViewColorItem(_backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_backgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", _textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_textColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", _startGradientColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_startGradientColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", _endGradientColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/page/PageViewColorItem;->_endGradientColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
