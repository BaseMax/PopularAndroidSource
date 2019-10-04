.class public Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static volatile d:Lcom/bumptech/glide/c;

.field private static volatile e:Z


# instance fields
.field final a:Lcom/bumptech/glide/e;

.field final b:Lcom/bumptech/glide/manager/d;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/h;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/load/b/k;

.field private final g:Lcom/bumptech/glide/load/b/a/e;

.field private final h:Lcom/bumptech/glide/load/b/b/h;

.field private final i:Lcom/bumptech/glide/load/b/d/b;

.field private final j:Lcom/bumptech/glide/f;

.field private final k:Lcom/bumptech/glide/load/b/a/b;

.field private final l:Lcom/bumptech/glide/manager/l;

.field private m:Lcom/bumptech/glide/MemoryCategory;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/e/h;Ljava/util/Map;Ljava/util/List;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/b/k;",
            "Lcom/bumptech/glide/load/b/b/h;",
            "Lcom/bumptech/glide/load/b/a/e;",
            "Lcom/bumptech/glide/load/b/a/b;",
            "Lcom/bumptech/glide/manager/l;",
            "Lcom/bumptech/glide/manager/d;",
            "I",
            "Lcom/bumptech/glide/e/h;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/i<",
            "**>;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/e/g<",
            "Ljava/lang/Object;",
            ">;>;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 326
    const-class v5, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/bumptech/glide/c;->c:Ljava/util/List;

    .line 119
    sget-object v6, Lcom/bumptech/glide/MemoryCategory;->NORMAL:Lcom/bumptech/glide/MemoryCategory;

    iput-object v6, v0, Lcom/bumptech/glide/c;->m:Lcom/bumptech/glide/MemoryCategory;

    move-object/from16 v9, p2

    .line 327
    iput-object v9, v0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/load/b/k;

    .line 328
    iput-object v3, v0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/load/b/a/e;

    .line 329
    iput-object v4, v0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/load/b/a/b;

    .line 330
    iput-object v1, v0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/load/b/b/h;

    move-object/from16 v6, p6

    .line 331
    iput-object v6, v0, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/manager/l;

    move-object/from16 v6, p7

    .line 332
    iput-object v6, v0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/manager/d;

    .line 334
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/e/h;->getOptions()Lcom/bumptech/glide/load/g;

    move-result-object v6

    sget-object v7, Lcom/bumptech/glide/load/resource/bitmap/k;->DECODE_FORMAT:Lcom/bumptech/glide/load/f;

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/load/g;->get(Lcom/bumptech/glide/load/f;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/load/DecodeFormat;

    .line 335
    new-instance v7, Lcom/bumptech/glide/load/b/d/b;

    invoke-direct {v7, v1, v3, v6}, Lcom/bumptech/glide/load/b/d/b;-><init>(Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v7, v0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/load/b/d/b;

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 339
    new-instance v6, Lcom/bumptech/glide/f;

    invoke-direct {v6}, Lcom/bumptech/glide/f;-><init>()V

    iput-object v6, v0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/f;

    .line 340
    iget-object v6, v0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/f;

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/f;->register(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/f;

    .line 343
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1b

    if-lt v6, v7, :cond_0

    .line 344
    iget-object v6, v0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/f;

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/n;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/bitmap/n;-><init>()V

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/f;->register(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/f;

    .line 347
    :cond_0
    iget-object v6, v0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/f;

    invoke-virtual {v6}, Lcom/bumptech/glide/f;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v6

    .line 348
    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/k;

    .line 351
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-direct {v7, v6, v8, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/k;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;)V

    .line 354
    new-instance v8, Lcom/bumptech/glide/load/resource/d/a;

    invoke-direct {v8, v2, v6, v3, v4}, Lcom/bumptech/glide/load/resource/d/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;)V

    .line 357
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/w;->parcel(Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/h;

    move-result-object v10

    .line 358
    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/f;

    invoke-direct {v11, v7}, Lcom/bumptech/glide/load/resource/bitmap/f;-><init>(Lcom/bumptech/glide/load/resource/bitmap/k;)V

    .line 359
    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/t;

    invoke-direct {v12, v7, v4}, Lcom/bumptech/glide/load/resource/bitmap/t;-><init>(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/b/a/b;)V

    .line 360
    new-instance v7, Lcom/bumptech/glide/load/resource/b/d;

    invoke-direct {v7, v2}, Lcom/bumptech/glide/load/resource/b/d;-><init>(Landroid/content/Context;)V

    .line 362
    new-instance v13, Lcom/bumptech/glide/load/c/s$c;

    invoke-direct {v13, v1}, Lcom/bumptech/glide/load/c/s$c;-><init>(Landroid/content/res/Resources;)V

    .line 364
    new-instance v14, Lcom/bumptech/glide/load/c/s$d;

    invoke-direct {v14, v1}, Lcom/bumptech/glide/load/c/s$d;-><init>(Landroid/content/res/Resources;)V

    .line 366
    new-instance v15, Lcom/bumptech/glide/load/c/s$b;

    invoke-direct {v15, v1}, Lcom/bumptech/glide/load/c/s$b;-><init>(Landroid/content/res/Resources;)V

    .line 368
    new-instance v9, Lcom/bumptech/glide/load/c/s$a;

    invoke-direct {v9, v1}, Lcom/bumptech/glide/load/c/s$a;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v16, v5

    .line 370
    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/c;

    invoke-direct {v5, v4}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Lcom/bumptech/glide/load/b/a/b;)V

    .line 372
    new-instance v2, Lcom/bumptech/glide/load/resource/e/a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/e/a;-><init>()V

    move-object/from16 p3, v2

    .line 373
    new-instance v2, Lcom/bumptech/glide/load/resource/e/d;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/e/d;-><init>()V

    move-object/from16 p6, v2

    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 p7, v2

    .line 377
    iget-object v2, v0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/f;

    const-class v0, Ljava/nio/ByteBuffer;

    move-object/from16 v17, v9

    new-instance v9, Lcom/bumptech/glide/load/c/c;

    invoke-direct {v9}, Lcom/bumptech/glide/load/c/c;-><init>()V

    .line 378
    invoke-virtual {v2, v0, v9}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/c/t;

    invoke-direct {v9, v4}, Lcom/bumptech/glide/load/c/t;-><init>(Lcom/bumptech/glide/load/b/a/b;)V

    .line 379
    invoke-virtual {v0, v2, v9}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/nio/ByteBuffer;

    const-class v9, Landroid/graphics/Bitmap;

    move-object/from16 v18, v14

    const-string v14, "Bitmap"

    .line 381
    invoke-virtual {v0, v14, v2, v9, v11}, Lcom/bumptech/glide/f;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/io/InputStream;

    const-class v9, Landroid/graphics/Bitmap;

    .line 382
    invoke-virtual {v0, v14, v2, v9, v12}, Lcom/bumptech/glide/f;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/os/ParcelFileDescriptor;

    const-class v9, Landroid/graphics/Bitmap;

    .line 383
    invoke-virtual {v0, v14, v2, v9, v10}, Lcom/bumptech/glide/f;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    const-class v9, Landroid/graphics/Bitmap;

    move-object/from16 v19, v15

    .line 392
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/w;->asset(Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/h;

    move-result-object v15

    .line 388
    invoke-virtual {v0, v14, v2, v9, v15}, Lcom/bumptech/glide/f;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/graphics/Bitmap;

    const-class v9, Landroid/graphics/Bitmap;

    .line 393
    invoke-static {}, Lcom/bumptech/glide/load/c/v$a;->getInstance()Lcom/bumptech/glide/load/c/v$a;

    move-result-object v15

    invoke-virtual {v0, v2, v9, v15}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/graphics/Bitmap;

    const-class v9, Landroid/graphics/Bitmap;

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/v;

    invoke-direct {v15}, Lcom/bumptech/glide/load/resource/bitmap/v;-><init>()V

    .line 394
    invoke-virtual {v0, v14, v2, v9, v15}, Lcom/bumptech/glide/f;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/graphics/Bitmap;

    .line 396
    invoke-virtual {v0, v2, v5}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/nio/ByteBuffer;

    const-class v9, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v15, v1, v11}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/h;)V

    const-string v11, "BitmapDrawable"

    .line 398
    invoke-virtual {v0, v11, v2, v9, v15}, Lcom/bumptech/glide/f;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/io/InputStream;

    const-class v9, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v15, v1, v12}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/h;)V

    .line 403
    invoke-virtual {v0, v11, v2, v9, v15}, Lcom/bumptech/glide/f;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/os/ParcelFileDescriptor;

    const-class v9, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v12, v1, v10}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/h;)V

    .line 408
    invoke-virtual {v0, v11, v2, v9, v12}, Lcom/bumptech/glide/f;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/b;

    invoke-direct {v9, v3, v5}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/i;)V

    .line 413
    invoke-virtual {v0, v2, v9}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/io/InputStream;

    const-class v5, Lcom/bumptech/glide/load/resource/d/c;

    new-instance v9, Lcom/bumptech/glide/load/resource/d/j;

    invoke-direct {v9, v6, v8, v4}, Lcom/bumptech/glide/load/resource/d/j;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/h;Lcom/bumptech/glide/load/b/a/b;)V

    const-string v6, "Gif"

    .line 415
    invoke-virtual {v0, v6, v2, v5, v9}, Lcom/bumptech/glide/f;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/nio/ByteBuffer;

    const-class v5, Lcom/bumptech/glide/load/resource/d/c;

    .line 420
    invoke-virtual {v0, v6, v2, v5, v8}, Lcom/bumptech/glide/f;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Lcom/bumptech/glide/load/resource/d/c;

    new-instance v5, Lcom/bumptech/glide/load/resource/d/d;

    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/d/d;-><init>()V

    .line 421
    invoke-virtual {v0, v2, v5}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Lcom/bumptech/glide/b/a;

    const-class v5, Lcom/bumptech/glide/b/a;

    .line 425
    invoke-static {}, Lcom/bumptech/glide/load/c/v$a;->getInstance()Lcom/bumptech/glide/load/c/v$a;

    move-result-object v6

    .line 424
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Lcom/bumptech/glide/b/a;

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/resource/d/h;

    invoke-direct {v6, v3}, Lcom/bumptech/glide/load/resource/d/h;-><init>(Lcom/bumptech/glide/load/b/a/e;)V

    .line 426
    invoke-virtual {v0, v14, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/graphics/drawable/Drawable;

    .line 432
    invoke-virtual {v0, v2, v5, v7}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/s;

    invoke-direct {v6, v7, v3}, Lcom/bumptech/glide/load/resource/bitmap/s;-><init>(Lcom/bumptech/glide/load/resource/b/d;Lcom/bumptech/glide/load/b/a/e;)V

    .line 433
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    new-instance v2, Lcom/bumptech/glide/load/resource/a/a$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/a/a$a;-><init>()V

    .line 436
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/f;->register(Lcom/bumptech/glide/load/a/e$a;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v5, Ljava/nio/ByteBuffer;

    new-instance v6, Lcom/bumptech/glide/load/c/d$b;

    invoke-direct {v6}, Lcom/bumptech/glide/load/c/d$b;-><init>()V

    .line 437
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/c/f$e;

    invoke-direct {v6}, Lcom/bumptech/glide/load/c/f$e;-><init>()V

    .line 438
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v5, Ljava/io/File;

    new-instance v6, Lcom/bumptech/glide/load/resource/c/a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/c/a;-><init>()V

    .line 439
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/c/f$b;

    invoke-direct {v6}, Lcom/bumptech/glide/load/c/f$b;-><init>()V

    .line 440
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v5, Ljava/io/File;

    .line 442
    invoke-static {}, Lcom/bumptech/glide/load/c/v$a;->getInstance()Lcom/bumptech/glide/load/c/v$a;

    move-result-object v6

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    new-instance v2, Lcom/bumptech/glide/load/a/k$a;

    invoke-direct {v2, v4}, Lcom/bumptech/glide/load/a/k$a;-><init>(Lcom/bumptech/glide/load/b/a/b;)V

    .line 444
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/f;->register(Lcom/bumptech/glide/load/a/e$a;)Lcom/bumptech/glide/f;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/io/InputStream;

    .line 445
    invoke-virtual {v0, v2, v5, v13}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v6, v19

    .line 446
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/lang/Integer;

    const-class v5, Ljava/io/InputStream;

    .line 450
    invoke-virtual {v0, v2, v5, v13}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/lang/Integer;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    .line 451
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/lang/Integer;

    const-class v5, Landroid/net/Uri;

    move-object/from16 v6, v18

    .line 455
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v7, v17

    .line 456
    invoke-virtual {v0, v2, v5, v7}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/lang/Integer;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    .line 460
    invoke-virtual {v0, v2, v5, v7}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/net/Uri;

    .line 464
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/c/e$c;

    invoke-direct {v6}, Lcom/bumptech/glide/load/c/e$c;-><init>()V

    .line 465
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/c/e$c;

    invoke-direct {v6}, Lcom/bumptech/glide/load/c/e$c;-><init>()V

    .line 466
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/c/u$c;

    invoke-direct {v6}, Lcom/bumptech/glide/load/c/u$c;-><init>()V

    .line 467
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/c/u$b;

    invoke-direct {v6}, Lcom/bumptech/glide/load/c/u$b;-><init>()V

    .line 468
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/c/u$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/c/u$a;-><init>()V

    .line 469
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/c/a/b$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/c/a/b$a;-><init>()V

    .line 471
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/c/a$c;

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/c/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/c/a$b;

    .line 476
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/c/a$b;-><init>(Landroid/content/res/AssetManager;)V

    .line 473
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/c/a/c$a;

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/c/a/c$a;-><init>(Landroid/content/Context;)V

    .line 477
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/c/a/d$a;

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/c/a/d$a;-><init>(Landroid/content/Context;)V

    .line 478
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/c/w$d;

    move-object/from16 v9, p7

    invoke-direct {v6, v9}, Lcom/bumptech/glide/load/c/w$d;-><init>(Landroid/content/ContentResolver;)V

    .line 479
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/c/w$b;

    invoke-direct {v6, v9}, Lcom/bumptech/glide/load/c/w$b;-><init>(Landroid/content/ContentResolver;)V

    .line 483
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/c/w$a;

    invoke-direct {v6, v9}, Lcom/bumptech/glide/load/c/w$a;-><init>(Landroid/content/ContentResolver;)V

    .line 487
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/c/x$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/c/x$a;-><init>()V

    .line 491
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/net/URL;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/c/a/e$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/c/a/e$a;-><init>()V

    .line 492
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/File;

    new-instance v6, Lcom/bumptech/glide/load/c/k$a;

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/c/k$a;-><init>(Landroid/content/Context;)V

    .line 493
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Lcom/bumptech/glide/load/c/g;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/c/a/a$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/c/a/a$a;-><init>()V

    .line 494
    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v5, Lcom/bumptech/glide/load/c/b$a;

    invoke-direct {v5}, Lcom/bumptech/glide/load/c/b$a;-><init>()V

    move-object/from16 v6, v16

    .line 495
    invoke-virtual {v0, v6, v2, v5}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/c/b$d;

    invoke-direct {v5}, Lcom/bumptech/glide/load/c/b$d;-><init>()V

    .line 496
    invoke-virtual {v0, v6, v2, v5}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/net/Uri;

    .line 497
    invoke-static {}, Lcom/bumptech/glide/load/c/v$a;->getInstance()Lcom/bumptech/glide/load/c/v$a;

    move-result-object v9

    invoke-virtual {v0, v2, v5, v9}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/graphics/drawable/Drawable;

    .line 498
    invoke-static {}, Lcom/bumptech/glide/load/c/v$a;->getInstance()Lcom/bumptech/glide/load/c/v$a;

    move-result-object v9

    invoke-virtual {v0, v2, v5, v9}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/graphics/drawable/Drawable;

    new-instance v9, Lcom/bumptech/glide/load/resource/b/e;

    invoke-direct {v9}, Lcom/bumptech/glide/load/resource/b/e;-><init>()V

    .line 499
    invoke-virtual {v0, v2, v5, v9}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v2, Landroid/graphics/Bitmap;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v9, Lcom/bumptech/glide/load/resource/e/b;

    invoke-direct {v9, v1}, Lcom/bumptech/glide/load/resource/e/b;-><init>(Landroid/content/res/Resources;)V

    .line 501
    invoke-virtual {v0, v2, v5, v9}, Lcom/bumptech/glide/f;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/e;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    .line 505
    invoke-virtual {v0, v1, v6, v8}, Lcom/bumptech/glide/f;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/e;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Drawable;

    new-instance v2, Lcom/bumptech/glide/load/resource/e/c;

    move-object/from16 v5, p6

    invoke-direct {v2, v3, v8, v5}, Lcom/bumptech/glide/load/resource/e/c;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/resource/e/e;Lcom/bumptech/glide/load/resource/e/e;)V

    .line 506
    invoke-virtual {v0, v1, v6, v2}, Lcom/bumptech/glide/f;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/e;)Lcom/bumptech/glide/f;

    move-result-object v0

    const-class v1, Lcom/bumptech/glide/load/resource/d/c;

    .line 511
    invoke-virtual {v0, v1, v6, v5}, Lcom/bumptech/glide/f;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/e;)Lcom/bumptech/glide/f;

    .line 513
    new-instance v5, Lcom/bumptech/glide/e/a/e;

    invoke-direct {v5}, Lcom/bumptech/glide/e/a/e;-><init>()V

    .line 514
    new-instance v0, Lcom/bumptech/glide/e;

    move-object/from16 v12, p0

    iget-object v6, v12, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/f;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v6

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p2

    move/from16 v10, p12

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/f;Lcom/bumptech/glide/e/a/e;Lcom/bumptech/glide/e/h;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/load/b/k;ZI)V

    iput-object v0, v12, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/e;

    return-void
.end method

.method private static a()Lcom/bumptech/glide/a;
    .locals 3

    :try_start_0
    const-string v0, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 286
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 303
    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 301
    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 299
    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 297
    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Ljava/lang/Exception;)V

    :catch_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Lcom/bumptech/glide/manager/l;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 684
    invoke-static {p0, v0}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 689
    invoke-static {p0}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/c;->getRequestManagerRetriever()Lcom/bumptech/glide/manager/l;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 9

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 229
    invoke-static {}, Lcom/bumptech/glide/c;->a()Lcom/bumptech/glide/a;

    move-result-object v0

    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/bumptech/glide/a;->isManifestParsingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    :cond_0
    new-instance v1, Lcom/bumptech/glide/c/e;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/c/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/c/e;->parse()Ljava/util/List;

    move-result-object v1

    :cond_1
    const/4 v2, 0x3

    const-string v3, "Glide"

    if-eqz v0, :cond_4

    .line 236
    invoke-virtual {v0}, Lcom/bumptech/glide/a;->a()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 238
    invoke-virtual {v0}, Lcom/bumptech/glide/a;->a()Ljava/util/Set;

    move-result-object v4

    .line 239
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 240
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 241
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/c/c;

    .line 242
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 245
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "AppGlideModule excludes manifest GlideModule: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 252
    :cond_4
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 253
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/c/c;

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Discovered GlideModule from manifest: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 1427
    iput-object v2, p1, Lcom/bumptech/glide/d;->a:Lcom/bumptech/glide/manager/l$a;

    .line 262
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/c/c;

    .line 263
    invoke-interface {v3, p0, p1}, Lcom/bumptech/glide/c/c;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 266
    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/a;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    .line 268
    :cond_7
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/d;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p1

    .line 269
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/c/c;

    .line 270
    iget-object v3, p1, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/f;

    invoke-interface {v2, p0, p1, v3}, Lcom/bumptech/glide/c/c;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/f;)V

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    .line 273
    iget-object v1, p1, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/f;

    invoke-virtual {v0, p0, p1, v1}, Lcom/bumptech/glide/a;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/f;)V

    .line 275
    :cond_9
    invoke-virtual {p0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 276
    sput-object p1, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/c;

    return-void
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 2

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static get(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 2

    .line 165
    sget-object v0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/c;

    if-nez v0, :cond_2

    .line 166
    const-class v0, Lcom/bumptech/glide/c;

    monitor-enter v0

    .line 167
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/c;

    if-nez v1, :cond_1

    .line 1179
    sget-boolean v1, Lcom/bumptech/glide/c;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1183
    sput-boolean v1, Lcom/bumptech/glide/c;->e:Z

    .line 1223
    new-instance v1, Lcom/bumptech/glide/d;

    invoke-direct {v1}, Lcom/bumptech/glide/d;-><init>()V

    invoke-static {p0, v1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    const/4 p0, 0x0

    .line 1185
    sput-boolean p0, Lcom/bumptech/glide/c;->e:Z

    goto :goto_0

    .line 1180
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 170
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 173
    :cond_2
    :goto_1
    sget-object p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/c;

    return-object p0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "image_manager_disk_cache"

    .line 130
    invoke-static {p0, v0}, Lcom/bumptech/glide/c;->getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object v1

    :cond_2
    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 2

    const-class v0, Lcom/bumptech/glide/c;

    monitor-enter v0

    .line 205
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/c;

    if-eqz v1, :cond_0

    .line 206
    invoke-static {}, Lcom/bumptech/glide/c;->tearDown()V

    .line 208
    :cond_0
    invoke-static {p0, p1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Lcom/bumptech/glide/c;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/bumptech/glide/c;

    monitor-enter v0

    .line 197
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/c;

    if-eqz v1, :cond_0

    .line 198
    invoke-static {}, Lcom/bumptech/glide/c;->tearDown()V

    .line 200
    :cond_0
    sput-object p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized tearDown()V
    .locals 3

    const-class v0, Lcom/bumptech/glide/c;

    monitor-enter v0

    .line 213
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/c;

    if-eqz v1, :cond_0

    .line 214
    sget-object v1, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/c;

    invoke-virtual {v1}, Lcom/bumptech/glide/c;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/c;

    .line 216
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 217
    sget-object v1, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/c;

    iget-object v1, v1, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/load/b/k;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/k;->shutdown()V

    :cond_0
    const/4 v1, 0x0

    .line 219
    sput-object v1, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static with(Landroid/app/Activity;)Lcom/bumptech/glide/h;
    .locals 1

    .line 728
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/manager/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/l;->get(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 771
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/manager/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/l;->get(Landroid/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/content/Context;)Lcom/bumptech/glide/h;
    .locals 1

    .line 716
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/manager/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/l;->get(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/view/View;)Lcom/bumptech/glide/h;
    .locals 1

    .line 801
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/manager/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/l;->get(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;
    .locals 1

    .line 754
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/manager/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/l;->get(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;
    .locals 1

    .line 741
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/manager/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/l;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a(Lcom/bumptech/glide/e/a/i;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a/i<",
            "*>;)Z"
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lcom/bumptech/glide/c;->c:Ljava/util/List;

    monitor-enter v0

    .line 811
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/h;

    .line 812
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/e/a/i;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 813
    monitor-exit v0

    return p1

    .line 816
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

.method public clearDiskCache()V
    .locals 1

    .line 643
    invoke-static {}, Lcom/bumptech/glide/g/k;->assertBackgroundThread()V

    .line 644
    iget-object v0, p0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/load/b/k;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/k;->clearDiskCache()V

    return-void
.end method

.method public clearMemory()V
    .locals 1

    .line 612
    invoke-static {}, Lcom/bumptech/glide/g/k;->assertMainThread()V

    .line 614
    iget-object v0, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/load/b/b/h;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/b/h;->clearMemory()V

    .line 615
    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/e;->clearMemory()V

    .line 616
    iget-object v0, p0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/b;->clearMemory()V

    return-void
.end method

.method public getArrayPool()Lcom/bumptech/glide/load/b/a/b;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/load/b/a/b;

    return-object v0
.end method

.method public getBitmapPool()Lcom/bumptech/glide/load/b/a/e;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/load/b/a/e;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getRegistry()Lcom/bumptech/glide/f;
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/f;

    return-object v0
.end method

.method public getRequestManagerRetriever()Lcom/bumptech/glide/manager/l;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/manager/l;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 851
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->clearMemory()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 841
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->trimMemory(I)V

    return-void
.end method

.method public varargs preFillBitmapPool([Lcom/bumptech/glide/load/b/d/d$a;)V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/load/b/d/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/d/b;->preFill([Lcom/bumptech/glide/load/b/d/d$a;)V

    return-void
.end method

.method public setMemoryCategory(Lcom/bumptech/glide/MemoryCategory;)Lcom/bumptech/glide/MemoryCategory;
    .locals 2

    .line 671
    invoke-static {}, Lcom/bumptech/glide/g/k;->assertMainThread()V

    .line 673
    iget-object v0, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/load/b/b/h;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/b/h;->setSizeMultiplier(F)V

    .line 674
    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/load/b/a/e;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/a/e;->setSizeMultiplier(F)V

    .line 675
    iget-object v0, p0, Lcom/bumptech/glide/c;->m:Lcom/bumptech/glide/MemoryCategory;

    .line 676
    iput-object p1, p0, Lcom/bumptech/glide/c;->m:Lcom/bumptech/glide/MemoryCategory;

    return-object v0
.end method

.method public trimMemory(I)V
    .locals 1

    .line 626
    invoke-static {}, Lcom/bumptech/glide/g/k;->assertMainThread()V

    .line 628
    iget-object v0, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/load/b/b/h;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/b/h;->trimMemory(I)V

    .line 629
    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/e;->trimMemory(I)V

    .line 630
    iget-object v0, p0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/b;->trimMemory(I)V

    return-void
.end method
