.class final Lcom/squareup/picasso/v$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/widget/RemoteViews;

.field final b:I


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;I)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/squareup/picasso/v$c;->a:Landroid/widget/RemoteViews;

    .line 87
    iput p2, p0, Lcom/squareup/picasso/v$c;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    check-cast p1, Lcom/squareup/picasso/v$c;

    .line 94
    iget v2, p0, Lcom/squareup/picasso/v$c;->b:I

    iget v3, p1, Lcom/squareup/picasso/v$c;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/squareup/picasso/v$c;->a:Landroid/widget/RemoteViews;

    iget-object p1, p1, Lcom/squareup/picasso/v$c;->a:Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/squareup/picasso/v$c;->a:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/squareup/picasso/v$c;->b:I

    add-int/2addr v0, v1

    return v0
.end method
