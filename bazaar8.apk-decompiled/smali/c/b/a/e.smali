.class public Lc/b/a/e;
.super Ljava/lang/Object;
.source "Glide.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static volatile a:Lc/b/a/e;

.field public static volatile b:Z


# instance fields
.field public final c:Lc/b/a/c/b/r;

.field public final d:Lc/b/a/c/b/a/e;

.field public final e:Lc/b/a/c/b/b/i;

.field public final f:Lc/b/a/c/b/d/a;

.field public final g:Lc/b/a/g;

.field public final h:Lcom/bumptech/glide/Registry;

.field public final i:Lc/b/a/c/b/a/b;

.field public final j:Lc/b/a/d/n;

.field public final k:Lc/b/a/d/d;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/n;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/bumptech/glide/MemoryCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/b/a/c/b/r;Lc/b/a/c/b/b/i;Lc/b/a/c/b/a/e;Lc/b/a/c/b/a/b;Lc/b/a/d/n;Lc/b/a/d/d;ILc/b/a/g/g;Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/c/b/r;",
            "Lc/b/a/c/b/b/i;",
            "Lc/b/a/c/b/a/e;",
            "Lc/b/a/c/b/a/b;",
            "Lc/b/a/d/n;",
            "Lc/b/a/d/d;",
            "I",
            "Lc/b/a/g/g;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/b/a/o<",
            "**>;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lc/b/a/e;->l:Ljava/util/List;

    .line 3
    sget-object v5, Lcom/bumptech/glide/MemoryCategory;->NORMAL:Lcom/bumptech/glide/MemoryCategory;

    iput-object v5, v0, Lc/b/a/e;->m:Lcom/bumptech/glide/MemoryCategory;

    move-object/from16 v8, p2

    .line 4
    iput-object v8, v0, Lc/b/a/e;->c:Lc/b/a/c/b/r;

    .line 5
    iput-object v3, v0, Lc/b/a/e;->d:Lc/b/a/c/b/a/e;

    .line 6
    iput-object v4, v0, Lc/b/a/e;->i:Lc/b/a/c/b/a/b;

    .line 7
    iput-object v1, v0, Lc/b/a/e;->e:Lc/b/a/c/b/b/i;

    move-object/from16 v5, p6

    .line 8
    iput-object v5, v0, Lc/b/a/e;->j:Lc/b/a/d/n;

    move-object/from16 v5, p7

    .line 9
    iput-object v5, v0, Lc/b/a/e;->k:Lc/b/a/d/d;

    .line 10
    invoke-virtual/range {p9 .. p9}, Lc/b/a/g/g;->h()Lc/b/a/c/f;

    move-result-object v5

    sget-object v6, Lc/b/a/c/d/a/k;->a:Lc/b/a/c/e;

    invoke-virtual {v5, v6}, Lc/b/a/c/f;->a(Lc/b/a/c/e;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/DecodeFormat;

    .line 11
    new-instance v6, Lc/b/a/c/b/d/a;

    invoke-direct {v6, v1, v3, v5}, Lc/b/a/c/b/d/a;-><init>(Lc/b/a/c/b/b/i;Lc/b/a/c/b/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v6, v0, Lc/b/a/e;->f:Lc/b/a/c/b/d/a;

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 13
    new-instance v5, Lcom/bumptech/glide/Registry;

    invoke-direct {v5}, Lcom/bumptech/glide/Registry;-><init>()V

    iput-object v5, v0, Lc/b/a/e;->h:Lcom/bumptech/glide/Registry;

    .line 14
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1b

    if-lt v5, v6, :cond_0

    .line 15
    iget-object v5, v0, Lc/b/a/e;->h:Lcom/bumptech/glide/Registry;

    new-instance v6, Lc/b/a/c/d/a/o;

    invoke-direct {v6}, Lc/b/a/c/d/a/o;-><init>()V

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 16
    :cond_0
    iget-object v5, v0, Lc/b/a/e;->h:Lcom/bumptech/glide/Registry;

    new-instance v6, Lc/b/a/c/d/a/i;

    invoke-direct {v6}, Lc/b/a/c/d/a/i;-><init>()V

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 17
    new-instance v5, Lc/b/a/c/d/a/k;

    iget-object v6, v0, Lc/b/a/e;->h:Lcom/bumptech/glide/Registry;

    invoke-virtual {v6}, Lcom/bumptech/glide/Registry;->a()Ljava/util/List;

    move-result-object v6

    .line 18
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-direct {v5, v6, v7, v3, v4}, Lc/b/a/c/d/a/k;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lc/b/a/c/b/a/e;Lc/b/a/c/b/a/b;)V

    .line 19
    new-instance v6, Lc/b/a/c/d/e/a;

    iget-object v7, v0, Lc/b/a/e;->h:Lcom/bumptech/glide/Registry;

    .line 20
    invoke-virtual {v7}, Lcom/bumptech/glide/Registry;->a()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v2, v7, v3, v4}, Lc/b/a/c/d/e/a;-><init>(Landroid/content/Context;Ljava/util/List;Lc/b/a/c/b/a/e;Lc/b/a/c/b/a/b;)V

    .line 21
    invoke-static/range {p4 .. p4}, Lc/b/a/c/d/a/z;->b(Lc/b/a/c/b/a/e;)Lc/b/a/c/g;

    move-result-object v7

    .line 22
    new-instance v9, Lc/b/a/c/d/a/f;

    invoke-direct {v9, v5}, Lc/b/a/c/d/a/f;-><init>(Lc/b/a/c/d/a/k;)V

    .line 23
    new-instance v10, Lc/b/a/c/d/a/u;

    invoke-direct {v10, v5, v4}, Lc/b/a/c/d/a/u;-><init>(Lc/b/a/c/d/a/k;Lc/b/a/c/b/a/b;)V

    .line 24
    new-instance v5, Lc/b/a/c/d/c/d;

    invoke-direct {v5, v2}, Lc/b/a/c/d/c/d;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v11, Lc/b/a/c/c/z$c;

    invoke-direct {v11, v1}, Lc/b/a/c/c/z$c;-><init>(Landroid/content/res/Resources;)V

    .line 26
    new-instance v12, Lc/b/a/c/c/z$d;

    invoke-direct {v12, v1}, Lc/b/a/c/c/z$d;-><init>(Landroid/content/res/Resources;)V

    .line 27
    new-instance v13, Lc/b/a/c/c/z$b;

    invoke-direct {v13, v1}, Lc/b/a/c/c/z$b;-><init>(Landroid/content/res/Resources;)V

    .line 28
    new-instance v14, Lc/b/a/c/c/z$a;

    invoke-direct {v14, v1}, Lc/b/a/c/c/z$a;-><init>(Landroid/content/res/Resources;)V

    .line 29
    new-instance v15, Lc/b/a/c/d/a/c;

    invoke-direct {v15, v4}, Lc/b/a/c/d/a/c;-><init>(Lc/b/a/c/b/a/b;)V

    .line 30
    new-instance v8, Lc/b/a/c/d/f/a;

    invoke-direct {v8}, Lc/b/a/c/d/f/a;-><init>()V

    move-object/from16 p3, v8

    .line 31
    new-instance v8, Lc/b/a/c/d/f/d;

    invoke-direct {v8}, Lc/b/a/c/d/f/d;-><init>()V

    move-object/from16 p6, v8

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 p7, v8

    .line 33
    iget-object v8, v0, Lc/b/a/e;->h:Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/nio/ByteBuffer;

    move-object/from16 v16, v14

    new-instance v14, Lc/b/a/c/c/e;

    invoke-direct {v14}, Lc/b/a/c/c/e;-><init>()V

    .line 34
    invoke-virtual {v8, v2, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lc/b/a/c/a;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/io/InputStream;

    new-instance v14, Lc/b/a/c/c/A;

    invoke-direct {v14, v4}, Lc/b/a/c/c/A;-><init>(Lc/b/a/c/b/a/b;)V

    .line 35
    invoke-virtual {v8, v2, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lc/b/a/c/a;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/nio/ByteBuffer;

    const-class v14, Landroid/graphics/Bitmap;

    move-object/from16 v17, v12

    const-string v12, "Bitmap"

    .line 36
    invoke-virtual {v8, v12, v2, v14, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/io/InputStream;

    const-class v14, Landroid/graphics/Bitmap;

    .line 37
    invoke-virtual {v8, v12, v2, v14, v10}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    const-class v14, Landroid/graphics/Bitmap;

    .line 38
    invoke-virtual {v8, v12, v2, v14, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    const-class v14, Landroid/graphics/Bitmap;

    move-object/from16 v18, v13

    .line 39
    invoke-static/range {p4 .. p4}, Lc/b/a/c/d/a/z;->a(Lc/b/a/c/b/a/e;)Lc/b/a/c/g;

    move-result-object v13

    .line 40
    invoke-virtual {v8, v12, v2, v14, v13}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/graphics/Bitmap;

    const-class v13, Landroid/graphics/Bitmap;

    .line 41
    invoke-static {}, Lc/b/a/c/c/C$a;->a()Lc/b/a/c/c/C$a;

    move-result-object v14

    invoke-virtual {v8, v2, v13, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/graphics/Bitmap;

    const-class v13, Landroid/graphics/Bitmap;

    new-instance v14, Lc/b/a/c/d/a/w;

    invoke-direct {v14}, Lc/b/a/c/d/a/w;-><init>()V

    .line 42
    invoke-virtual {v8, v12, v2, v13, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/graphics/Bitmap;

    .line 43
    invoke-virtual {v8, v2, v15}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lc/b/a/c/h;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/nio/ByteBuffer;

    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v14, Lc/b/a/c/d/a/a;

    invoke-direct {v14, v1, v9}, Lc/b/a/c/d/a/a;-><init>(Landroid/content/res/Resources;Lc/b/a/c/g;)V

    const-string v9, "BitmapDrawable"

    .line 44
    invoke-virtual {v8, v9, v2, v13, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/io/InputStream;

    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v14, Lc/b/a/c/d/a/a;

    invoke-direct {v14, v1, v10}, Lc/b/a/c/d/a/a;-><init>(Landroid/content/res/Resources;Lc/b/a/c/g;)V

    .line 45
    invoke-virtual {v8, v9, v2, v13, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    const-class v10, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v13, Lc/b/a/c/d/a/a;

    invoke-direct {v13, v1, v7}, Lc/b/a/c/d/a/a;-><init>(Landroid/content/res/Resources;Lc/b/a/c/g;)V

    .line 46
    invoke-virtual {v8, v9, v2, v10, v13}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lc/b/a/c/d/a/b;

    invoke-direct {v7, v3, v15}, Lc/b/a/c/d/a/b;-><init>(Lc/b/a/c/b/a/e;Lc/b/a/c/h;)V

    .line 47
    invoke-virtual {v8, v2, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lc/b/a/c/h;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/io/InputStream;

    const-class v7, Lc/b/a/c/d/e/c;

    new-instance v9, Lc/b/a/c/d/e/j;

    iget-object v10, v0, Lc/b/a/e;->h:Lcom/bumptech/glide/Registry;

    .line 48
    invoke-virtual {v10}, Lcom/bumptech/glide/Registry;->a()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10, v6, v4}, Lc/b/a/c/d/e/j;-><init>(Ljava/util/List;Lc/b/a/c/g;Lc/b/a/c/b/a/b;)V

    const-string v10, "Gif"

    .line 49
    invoke-virtual {v8, v10, v2, v7, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/nio/ByteBuffer;

    const-class v7, Lc/b/a/c/d/e/c;

    .line 50
    invoke-virtual {v8, v10, v2, v7, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    const-class v2, Lc/b/a/c/d/e/c;

    new-instance v6, Lc/b/a/c/d/e/d;

    invoke-direct {v6}, Lc/b/a/c/d/e/d;-><init>()V

    .line 51
    invoke-virtual {v8, v2, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lc/b/a/c/h;)Lcom/bumptech/glide/Registry;

    const-class v2, Lc/b/a/b/a;

    const-class v6, Lc/b/a/b/a;

    .line 52
    invoke-static {}, Lc/b/a/c/c/C$a;->a()Lc/b/a/c/c/C$a;

    move-result-object v7

    .line 53
    invoke-virtual {v8, v2, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Lc/b/a/b/a;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lc/b/a/c/d/e/h;

    invoke-direct {v7, v3}, Lc/b/a/c/d/e/h;-><init>(Lc/b/a/c/b/a/e;)V

    .line 54
    invoke-virtual {v8, v12, v2, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    const-class v6, Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {v8, v2, v6, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lc/b/a/c/d/a/s;

    invoke-direct {v7, v5, v3}, Lc/b/a/c/d/a/s;-><init>(Lc/b/a/c/d/c/d;Lc/b/a/c/b/a/e;)V

    .line 56
    invoke-virtual {v8, v2, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    new-instance v2, Lc/b/a/c/d/b/a$a;

    invoke-direct {v2}, Lc/b/a/c/d/b/a$a;-><init>()V

    .line 57
    invoke-virtual {v8, v2}, Lcom/bumptech/glide/Registry;->a(Lc/b/a/c/a/e$a;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/io/File;

    const-class v5, Ljava/nio/ByteBuffer;

    new-instance v6, Lc/b/a/c/c/f$b;

    invoke-direct {v6}, Lc/b/a/c/c/f$b;-><init>()V

    .line 58
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/io/File;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lc/b/a/c/c/i$e;

    invoke-direct {v6}, Lc/b/a/c/c/i$e;-><init>()V

    .line 59
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/io/File;

    const-class v5, Ljava/io/File;

    new-instance v6, Lc/b/a/c/d/d/a;

    invoke-direct {v6}, Lc/b/a/c/d/d/a;-><init>()V

    .line 60
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/io/File;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lc/b/a/c/c/i$b;

    invoke-direct {v6}, Lc/b/a/c/c/i$b;-><init>()V

    .line 61
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/io/File;

    const-class v5, Ljava/io/File;

    .line 62
    invoke-static {}, Lc/b/a/c/c/C$a;->a()Lc/b/a/c/c/C$a;

    move-result-object v6

    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    new-instance v2, Lc/b/a/c/a/l$a;

    invoke-direct {v2, v4}, Lc/b/a/c/a/l$a;-><init>(Lc/b/a/c/b/a/b;)V

    .line 63
    invoke-virtual {v8, v2}, Lcom/bumptech/glide/Registry;->a(Lc/b/a/c/a/e$a;)Lcom/bumptech/glide/Registry;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/io/InputStream;

    .line 64
    invoke-virtual {v8, v2, v5, v11}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v6, v18

    .line 65
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/lang/Integer;

    const-class v5, Ljava/io/InputStream;

    .line 66
    invoke-virtual {v8, v2, v5, v11}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/lang/Integer;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    .line 67
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/lang/Integer;

    const-class v5, Landroid/net/Uri;

    move-object/from16 v6, v17

    .line 68
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v7, v16

    .line 69
    invoke-virtual {v8, v2, v5, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/lang/Integer;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    .line 70
    invoke-virtual {v8, v2, v5, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/net/Uri;

    .line 71
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/lang/String;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lc/b/a/c/c/g$c;

    invoke-direct {v6}, Lc/b/a/c/c/g$c;-><init>()V

    .line 72
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lc/b/a/c/c/g$c;

    invoke-direct {v6}, Lc/b/a/c/c/g$c;-><init>()V

    .line 73
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/lang/String;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lc/b/a/c/c/B$c;

    invoke-direct {v6}, Lc/b/a/c/c/B$c;-><init>()V

    .line 74
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/lang/String;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lc/b/a/c/c/B$b;

    invoke-direct {v6}, Lc/b/a/c/c/B$b;-><init>()V

    .line 75
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/lang/String;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    new-instance v6, Lc/b/a/c/c/B$a;

    invoke-direct {v6}, Lc/b/a/c/c/B$a;-><init>()V

    .line 76
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lc/b/a/c/c/a/b$a;

    invoke-direct {v6}, Lc/b/a/c/c/a/b$a;-><init>()V

    .line 77
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lc/b/a/c/c/a$c;

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lc/b/a/c/c/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lc/b/a/c/c/a$b;

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lc/b/a/c/c/a$b;-><init>(Landroid/content/res/AssetManager;)V

    .line 80
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lc/b/a/c/c/a/c$a;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Lc/b/a/c/c/a/c$a;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lc/b/a/c/c/a/d$a;

    invoke-direct {v6, v7}, Lc/b/a/c/c/a/d$a;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lc/b/a/c/c/D$d;

    move-object/from16 v9, p7

    invoke-direct {v6, v9}, Lc/b/a/c/c/D$d;-><init>(Landroid/content/ContentResolver;)V

    .line 83
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lc/b/a/c/c/D$b;

    invoke-direct {v6, v9}, Lc/b/a/c/c/D$b;-><init>(Landroid/content/ContentResolver;)V

    .line 84
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    new-instance v6, Lc/b/a/c/c/D$a;

    invoke-direct {v6, v9}, Lc/b/a/c/c/D$a;-><init>(Landroid/content/ContentResolver;)V

    .line 85
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lc/b/a/c/c/E$a;

    invoke-direct {v6}, Lc/b/a/c/c/E$a;-><init>()V

    .line 86
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/net/URL;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lc/b/a/c/c/a/e$a;

    invoke-direct {v6}, Lc/b/a/c/c/a/e$a;-><init>()V

    .line 87
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/File;

    new-instance v6, Lc/b/a/c/c/q$a;

    invoke-direct {v6, v7}, Lc/b/a/c/c/q$a;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Lc/b/a/c/c/l;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lc/b/a/c/c/a/a$a;

    invoke-direct {v6}, Lc/b/a/c/c/a/a$a;-><init>()V

    .line 89
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, [B

    const-class v5, Ljava/nio/ByteBuffer;

    new-instance v6, Lc/b/a/c/c/c$a;

    invoke-direct {v6}, Lc/b/a/c/c/c$a;-><init>()V

    .line 90
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, [B

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lc/b/a/c/c/c$d;

    invoke-direct {v6}, Lc/b/a/c/c/c$d;-><init>()V

    .line 91
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/net/Uri;

    .line 92
    invoke-static {}, Lc/b/a/c/c/C$a;->a()Lc/b/a/c/c/C$a;

    move-result-object v6

    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-static {}, Lc/b/a/c/c/C$a;->a()Lc/b/a/c/c/C$a;

    move-result-object v6

    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/graphics/drawable/Drawable;

    new-instance v6, Lc/b/a/c/d/c/e;

    invoke-direct {v6}, Lc/b/a/c/d/c/e;-><init>()V

    .line 94
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/graphics/Bitmap;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lc/b/a/c/d/f/b;

    invoke-direct {v6, v1}, Lc/b/a/c/d/f/b;-><init>(Landroid/content/res/Resources;)V

    .line 95
    invoke-virtual {v8, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/d/f/e;)Lcom/bumptech/glide/Registry;

    const-class v1, Landroid/graphics/Bitmap;

    const-class v2, [B

    move-object/from16 v5, p3

    .line 96
    invoke-virtual {v8, v1, v2, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/d/f/e;)Lcom/bumptech/glide/Registry;

    const-class v1, Landroid/graphics/drawable/Drawable;

    const-class v2, [B

    new-instance v6, Lc/b/a/c/d/f/c;

    move-object/from16 v9, p6

    invoke-direct {v6, v3, v5, v9}, Lc/b/a/c/d/f/c;-><init>(Lc/b/a/c/b/a/e;Lc/b/a/c/d/f/e;Lc/b/a/c/d/f/e;)V

    .line 97
    invoke-virtual {v8, v1, v2, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/d/f/e;)Lcom/bumptech/glide/Registry;

    const-class v1, Lc/b/a/c/d/e/c;

    const-class v2, [B

    .line 98
    invoke-virtual {v8, v1, v2, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/d/f/e;)Lcom/bumptech/glide/Registry;

    .line 99
    new-instance v5, Lc/b/a/g/a/e;

    invoke-direct {v5}, Lc/b/a/g/a/e;-><init>()V

    .line 100
    new-instance v10, Lc/b/a/g;

    iget-object v6, v0, Lc/b/a/e;->h:Lcom/bumptech/glide/Registry;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v6

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p2

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lc/b/a/g;-><init>(Landroid/content/Context;Lc/b/a/c/b/a/b;Lcom/bumptech/glide/Registry;Lc/b/a/g/a/e;Lc/b/a/g/g;Ljava/util/Map;Lc/b/a/c/b/r;I)V

    iput-object v10, v0, Lc/b/a/e;->g:Lc/b/a/g;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-boolean v0, Lc/b/a/e;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lc/b/a/e;->b:Z

    .line 3
    invoke-static {p0}, Lc/b/a/e;->d(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 4
    sput-boolean p0, Lc/b/a/e;->b:Z

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Lc/b/a/f;)V
    .locals 9

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 7
    invoke-static {}, Lc/b/a/e;->b()Lc/b/a/a;

    move-result-object v0

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lc/b/a/e/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    :cond_0
    new-instance v1, Lc/b/a/e/e;

    invoke-direct {v1, p0}, Lc/b/a/e/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lc/b/a/e/e;->a()Ljava/util/List;

    move-result-object v1

    :cond_1
    const/4 v2, 0x3

    const-string v3, "Glide"

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Lc/b/a/a;->b()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 12
    invoke-virtual {v0}, Lc/b/a/a;->b()Ljava/util/Set;

    move-result-object v4

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 14
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 15
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/b/a/e/c;

    .line 16
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 20
    :cond_4
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/a/e/c;

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discovered GlideModule from manifest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {v0}, Lc/b/a/a;->c()Lc/b/a/d/n$a;

    move-result-object v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 24
    :goto_2
    invoke-virtual {p1, v2}, Lc/b/a/f;->a(Lc/b/a/d/n$a;)V

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/e/c;

    .line 26
    invoke-interface {v3, p0, p1}, Lc/b/a/e/b;->a(Landroid/content/Context;Lc/b/a/f;)V

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    .line 27
    invoke-virtual {v0, p0, p1}, Lc/b/a/e/a;->a(Landroid/content/Context;Lc/b/a/f;)V

    .line 28
    :cond_8
    invoke-virtual {p1, p0}, Lc/b/a/f;->a(Landroid/content/Context;)Lc/b/a/e;

    move-result-object p1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/a/e/c;

    .line 30
    iget-object v3, p1, Lc/b/a/e;->h:Lcom/bumptech/glide/Registry;

    invoke-interface {v2, p0, p1, v3}, Lc/b/a/e/f;->a(Landroid/content/Context;Lc/b/a/e;Lcom/bumptech/glide/Registry;)V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    .line 31
    iget-object v1, p1, Lc/b/a/e;->h:Lcom/bumptech/glide/Registry;

    invoke-virtual {v0, p0, p1, v1}, Lc/b/a/e/d;->a(Landroid/content/Context;Lc/b/a/e;Lcom/bumptech/glide/Registry;)V

    .line 32
    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 33
    sput-object p1, Lc/b/a/e;->a:Lc/b/a/e;

    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b()Lc/b/a/a;
    .locals 4

    const-string v0, "c.b.a.b"

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    .line 8
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-static {v0}, Lc/b/a/e;->a(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    .line 10
    invoke-static {v0}, Lc/b/a/e;->a(Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    .line 11
    invoke-static {v0}, Lc/b/a/e;->a(Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    .line 12
    invoke-static {v0}, Lc/b/a/e;->a(Ljava/lang/Exception;)V

    throw v1

    :catch_4
    nop

    const/4 v0, 0x5

    const-string v2, "Glide"

    .line 13
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 14
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lc/b/a/e;
    .locals 2

    .line 1
    sget-object v0, Lc/b/a/e;->a:Lc/b/a/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lc/b/a/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc/b/a/e;->a:Lc/b/a/e;

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0}, Lc/b/a/e;->a(Landroid/content/Context;)V

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lc/b/a/e;->a:Lc/b/a/e;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lc/b/a/d/n;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 2
    invoke-static {p0, v0}, Lc/b/a/i/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Lc/b/a/e;->b(Landroid/content/Context;)Lc/b/a/e;

    move-result-object p0

    invoke-virtual {p0}, Lc/b/a/e;->i()Lc/b/a/d/n;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/f;

    invoke-direct {v0}, Lc/b/a/f;-><init>()V

    invoke-static {p0, v0}, Lc/b/a/e;->a(Landroid/content/Context;Lc/b/a/f;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)Lc/b/a/n;
    .locals 1

    .line 2
    invoke-static {p0}, Lc/b/a/e;->c(Landroid/content/Context;)Lc/b/a/d/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/b/a/d/n;->a(Landroid/content/Context;)Lc/b/a/n;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/MemoryCategory;)Lcom/bumptech/glide/MemoryCategory;
    .locals 2

    .line 43
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 44
    iget-object v0, p0, Lc/b/a/e;->e:Lc/b/a/c/b/b/i;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->f()F

    move-result v1

    invoke-interface {v0, v1}, Lc/b/a/c/b/b/i;->a(F)V

    .line 45
    iget-object v0, p0, Lc/b/a/e;->d:Lc/b/a/c/b/a/e;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->f()F

    move-result v1

    invoke-interface {v0, v1}, Lc/b/a/c/b/a/e;->a(F)V

    .line 46
    iget-object v0, p0, Lc/b/a/e;->m:Lcom/bumptech/glide/MemoryCategory;

    .line 47
    iput-object p1, p0, Lc/b/a/e;->m:Lcom/bumptech/glide/MemoryCategory;

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 35
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 36
    iget-object v0, p0, Lc/b/a/e;->e:Lc/b/a/c/b/b/i;

    invoke-interface {v0}, Lc/b/a/c/b/b/i;->a()V

    .line 37
    iget-object v0, p0, Lc/b/a/e;->d:Lc/b/a/c/b/a/e;

    invoke-interface {v0}, Lc/b/a/c/b/a/e;->a()V

    .line 38
    iget-object v0, p0, Lc/b/a/e;->i:Lc/b/a/c/b/a/b;

    invoke-interface {v0}, Lc/b/a/c/b/a/b;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 39
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 40
    iget-object v0, p0, Lc/b/a/e;->e:Lc/b/a/c/b/b/i;

    invoke-interface {v0, p1}, Lc/b/a/c/b/b/i;->a(I)V

    .line 41
    iget-object v0, p0, Lc/b/a/e;->d:Lc/b/a/c/b/a/e;

    invoke-interface {v0, p1}, Lc/b/a/c/b/a/e;->a(I)V

    .line 42
    iget-object v0, p0, Lc/b/a/e;->i:Lc/b/a/c/b/a/b;

    invoke-interface {v0, p1}, Lc/b/a/c/b/a/b;->a(I)V

    return-void
.end method

.method public a(Lc/b/a/n;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lc/b/a/e;->l:Ljava/util/List;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lc/b/a/e;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Lc/b/a/e;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    monitor-exit v0

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register already registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lc/b/a/g/a/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/g/a/h<",
            "*>;)Z"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lc/b/a/e;->l:Ljava/util/List;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lc/b/a/e;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/a/n;

    .line 50
    invoke-virtual {v2, p1}, Lc/b/a/n;->b(Lc/b/a/g/a/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 51
    monitor-exit v0

    return p1

    .line 52
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public b(Lc/b/a/n;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lc/b/a/e;->l:Ljava/util/List;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lc/b/a/e;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lc/b/a/e;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 18
    monitor-exit v0

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unregister not yet registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Lc/b/a/c/b/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/e;->i:Lc/b/a/c/b/a/b;

    return-object v0
.end method

.method public d()Lc/b/a/c/b/a/e;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/b/a/e;->d:Lc/b/a/c/b/a/e;

    return-object v0
.end method

.method public e()Lc/b/a/d/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/e;->k:Lc/b/a/d/d;

    return-object v0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/e;->g:Lc/b/a/g;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public g()Lc/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/e;->g:Lc/b/a/g;

    return-object v0
.end method

.method public h()Lcom/bumptech/glide/Registry;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/e;->h:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public i()Lc/b/a/d/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/e;->j:Lc/b/a/d/n;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/b/a/e;->a()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/b/a/e;->a(I)V

    return-void
.end method
