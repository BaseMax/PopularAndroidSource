.class public Lc/f/a/n;
.super Lc/f/a/I;
.source "ContentStreamRequestHandler.java"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/f/a/I;-><init>()V

    .line 2
    iput-object p1, p0, Lc/f/a/n;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lc/f/a/G;I)Lc/f/a/I$a;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lc/f/a/n;->c(Lc/f/a/G;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lk/s;->a(Ljava/io/InputStream;)Lk/z;

    move-result-object p1

    .line 3
    new-instance p2, Lc/f/a/I$a;

    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {p2, p1, v0}, Lc/f/a/I$a;-><init>(Lk/z;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object p2
.end method

.method public a(Lc/f/a/G;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lc/f/a/G;->e:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Lc/f/a/G;)Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/f/a/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    iget-object p1, p1, Lc/f/a/G;->e:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
