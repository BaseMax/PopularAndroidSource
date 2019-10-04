.class public final Lcom/squareup/picasso/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:I

.field private final b:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field private final c:Landroid/graphics/Bitmap;

.field private final d:Lb/v;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Lb/v;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eq v2, v0, :cond_2

    .line 75
    iput-object p1, p0, Lcom/squareup/picasso/y$a;->c:Landroid/graphics/Bitmap;

    .line 76
    iput-object p2, p0, Lcom/squareup/picasso/y$a;->d:Lb/v;

    const-string p1, "loadedFrom == null"

    .line 77
    invoke-static {p3, p1}, Lcom/squareup/picasso/af;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/picasso/Picasso$LoadedFrom;

    iput-object p1, p0, Lcom/squareup/picasso/y$a;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 78
    iput p4, p0, Lcom/squareup/picasso/y$a;->a:I

    return-void

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 2

    const-string v0, "bitmap == null"

    .line 60
    invoke-static {p1, v0}, Lcom/squareup/picasso/af;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/squareup/picasso/y$a;-><init>(Landroid/graphics/Bitmap;Lb/v;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-void
.end method

.method public constructor <init>(Lb/v;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 2

    const-string v0, "source == null"

    .line 64
    invoke-static {p1, v0}, Lcom/squareup/picasso/af;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/v;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/picasso/y$a;-><init>(Landroid/graphics/Bitmap;Lb/v;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/squareup/picasso/y$a;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/squareup/picasso/y$a;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method

.method public final getSource()Lb/v;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/squareup/picasso/y$a;->d:Lb/v;

    return-object v0
.end method
