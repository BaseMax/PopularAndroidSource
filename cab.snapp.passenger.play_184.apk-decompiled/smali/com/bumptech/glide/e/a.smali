.class public abstract Lcom/bumptech/glide/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bumptech/glide/e/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private a:I

.field b:Z

.field private c:F

.field private d:Lcom/bumptech/glide/load/b/j;

.field private e:Lcom/bumptech/glide/Priority;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcom/bumptech/glide/load/d;

.field private n:Z

.field private o:Z

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private r:Lcom/bumptech/glide/load/g;

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Landroid/content/res/Resources$Theme;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    iput v0, p0, Lcom/bumptech/glide/e/a;->c:F

    .line 74
    sget-object v0, Lcom/bumptech/glide/load/b/j;->AUTOMATIC:Lcom/bumptech/glide/load/b/j;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/load/b/j;

    .line 76
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->e:Lcom/bumptech/glide/Priority;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->j:Z

    const/4 v1, -0x1

    .line 85
    iput v1, p0, Lcom/bumptech/glide/e/a;->k:I

    .line 86
    iput v1, p0, Lcom/bumptech/glide/e/a;->l:I

    .line 88
    invoke-static {}, Lcom/bumptech/glide/f/b;->obtain()Lcom/bumptech/glide/f/b;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/e/a;->m:Lcom/bumptech/glide/load/d;

    .line 90
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->o:Z

    .line 94
    new-instance v1, Lcom/bumptech/glide/load/g;

    invoke-direct {v1}, Lcom/bumptech/glide/load/g;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/e/a;->r:Lcom/bumptech/glide/load/g;

    .line 96
    new-instance v1, Lcom/bumptech/glide/g/b;

    invoke-direct {v1}, Lcom/bumptech/glide/g/b;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/e/a;->s:Ljava/util/Map;

    .line 98
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/e/a;->t:Ljava/lang/Class;

    .line 106
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->b:Z

    return-void
.end method

.method private a()Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1314
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->u:Z

    if-nez v0, :cond_0

    return-object p0

    .line 1315
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 989
    :goto_0
    iget-boolean v1, v0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v1, :cond_0

    .line 990
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_0

    .line 993
    :cond_0
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/m;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/m;-><init>(Lcom/bumptech/glide/load/j;Z)V

    .line 995
    const-class v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, p1, p2}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    .line 996
    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v2, v1, p2}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    .line 1001
    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/m;->asBitmapDrawable()Lcom/bumptech/glide/load/j;

    move-result-object v1

    invoke-direct {v0, v2, v1, p2}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    .line 1002
    const-class v1, Lcom/bumptech/glide/load/resource/d/c;

    new-instance v2, Lcom/bumptech/glide/load/resource/d/f;

    invoke-direct {v2, p1}, Lcom/bumptech/glide/load/resource/d/f;-><init>(Lcom/bumptech/glide/load/j;)V

    invoke-direct {v0, v1, v2, p2}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    .line 1003
    invoke-direct {v0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 846
    :goto_0
    iget-boolean v1, v0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v1, :cond_0

    .line 847
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_0

    .line 850
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/e/a;

    const/4 p1, 0x0

    .line 851
    invoke-direct {v0, p2, p1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 889
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/e/a;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    .line 890
    iput-boolean p2, p1, Lcom/bumptech/glide/e/a;->b:Z

    return-object p1
.end method

.method private a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/j<",
            "TY;>;Z)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 1035
    :goto_0
    iget-boolean v1, v0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v1, :cond_0

    .line 1036
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_0

    .line 1039
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    invoke-static {p2}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    iget-object v1, v0, Lcom/bumptech/glide/e/a;->s:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    iget p1, v0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit16 p1, p1, 0x800

    iput p1, v0, Lcom/bumptech/glide/e/a;->a:I

    const/4 p1, 0x1

    .line 1043
    iput-boolean p1, v0, Lcom/bumptech/glide/e/a;->o:Z

    .line 1044
    iget p2, v0, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v1, 0x10000

    or-int/2addr p2, v1

    iput p2, v0, Lcom/bumptech/glide/e/a;->a:I

    const/4 p2, 0x0

    .line 1047
    iput-boolean p2, v0, Lcom/bumptech/glide/e/a;->b:Z

    if-eqz p3, :cond_1

    .line 1049
    iget p2, v0, Lcom/bumptech/glide/e/a;->a:I

    const/high16 p3, 0x20000

    or-int/2addr p2, p3

    iput p2, v0, Lcom/bumptech/glide/e/a;->a:I

    .line 1050
    iput-boolean p1, v0, Lcom/bumptech/glide/e/a;->n:Z

    .line 1052
    :cond_1
    invoke-direct {v0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method private a(I)Z
    .locals 1

    .line 1435
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    invoke-static {v0, p1}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result p1

    return p1
.end method

.method private static a(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 861
    :goto_0
    iget-boolean v1, v0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v1, :cond_0

    .line 862
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_0

    .line 865
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/e/a;

    .line 866
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/e/a;->transform(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/e/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a<",
            "*>;)TT;"
        }
    .end annotation

    .line 1129
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 1134
    :cond_0
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    iget v0, p1, Lcom/bumptech/glide/e/a;->c:F

    iput v0, p0, Lcom/bumptech/glide/e/a;->c:F

    .line 1137
    :cond_1
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1138
    iget-boolean v0, p1, Lcom/bumptech/glide/e/a;->x:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->x:Z

    .line 1140
    :cond_2
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1141
    iget-boolean v0, p1, Lcom/bumptech/glide/e/a;->z:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->z:Z

    .line 1143
    :cond_3
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1144
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/load/b/j;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/load/b/j;

    .line 1146
    :cond_4
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1147
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->e:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->e:Lcom/bumptech/glide/Priority;

    .line 1149
    :cond_5
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1150
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->f:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->f:Landroid/graphics/drawable/Drawable;

    .line 1151
    iput v1, p0, Lcom/bumptech/glide/e/a;->g:I

    .line 1152
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1154
    :cond_6
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1155
    iget v0, p1, Lcom/bumptech/glide/e/a;->g:I

    iput v0, p0, Lcom/bumptech/glide/e/a;->g:I

    .line 1156
    iput-object v2, p0, Lcom/bumptech/glide/e/a;->f:Landroid/graphics/drawable/Drawable;

    .line 1157
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1159
    :cond_7
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1160
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->h:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->h:Landroid/graphics/drawable/Drawable;

    .line 1161
    iput v1, p0, Lcom/bumptech/glide/e/a;->i:I

    .line 1162
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1164
    :cond_8
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1165
    iget v0, p1, Lcom/bumptech/glide/e/a;->i:I

    iput v0, p0, Lcom/bumptech/glide/e/a;->i:I

    .line 1166
    iput-object v2, p0, Lcom/bumptech/glide/e/a;->h:Landroid/graphics/drawable/Drawable;

    .line 1167
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1169
    :cond_9
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1170
    iget-boolean v0, p1, Lcom/bumptech/glide/e/a;->j:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->j:Z

    .line 1172
    :cond_a
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1173
    iget v0, p1, Lcom/bumptech/glide/e/a;->l:I

    iput v0, p0, Lcom/bumptech/glide/e/a;->l:I

    .line 1174
    iget v0, p1, Lcom/bumptech/glide/e/a;->k:I

    iput v0, p0, Lcom/bumptech/glide/e/a;->k:I

    .line 1176
    :cond_b
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1177
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->m:Lcom/bumptech/glide/load/d;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->m:Lcom/bumptech/glide/load/d;

    .line 1179
    :cond_c
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1180
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->t:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->t:Ljava/lang/Class;

    .line 1182
    :cond_d
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1183
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->p:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->p:Landroid/graphics/drawable/Drawable;

    .line 1184
    iput v1, p0, Lcom/bumptech/glide/e/a;->q:I

    .line 1185
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1187
    :cond_e
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1188
    iget v0, p1, Lcom/bumptech/glide/e/a;->q:I

    iput v0, p0, Lcom/bumptech/glide/e/a;->q:I

    .line 1189
    iput-object v2, p0, Lcom/bumptech/glide/e/a;->p:Landroid/graphics/drawable/Drawable;

    .line 1190
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1192
    :cond_f
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1193
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->v:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->v:Landroid/content/res/Resources$Theme;

    .line 1195
    :cond_10
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1196
    iget-boolean v0, p1, Lcom/bumptech/glide/e/a;->o:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->o:Z

    .line 1198
    :cond_11
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1199
    iget-boolean v0, p1, Lcom/bumptech/glide/e/a;->n:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->n:Z

    .line 1201
    :cond_12
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1202
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->s:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->s:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1203
    iget-boolean v0, p1, Lcom/bumptech/glide/e/a;->b:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->b:Z

    .line 1205
    :cond_13
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1206
    iget-boolean v0, p1, Lcom/bumptech/glide/e/a;->y:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->y:Z

    .line 1210
    :cond_14
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->o:Z

    if-nez v0, :cond_15

    .line 1211
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1212
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1213
    iput-boolean v1, p0, Lcom/bumptech/glide/e/a;->n:Z

    .line 1214
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    const/4 v0, 0x1

    .line 1215
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->b:Z

    .line 1218
    :cond_15
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    iget v1, p1, Lcom/bumptech/glide/e/a;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1219
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->r:Lcom/bumptech/glide/load/g;

    iget-object p1, p1, Lcom/bumptech/glide/e/a;->r:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/g;->putAll(Lcom/bumptech/glide/load/g;)V

    .line 1221
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public autoClone()Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1303
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->u:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1304
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1307
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    .line 1308
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->lock()Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 742
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/g;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/e/a;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public centerInside()Lcom/bumptech/glide/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 808
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>()V

    const/4 v2, 0x1

    .line 3872
    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public circleCrop()Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 837
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/e/a;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 546
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/a;

    .line 547
    new-instance v1, Lcom/bumptech/glide/load/g;

    invoke-direct {v1}, Lcom/bumptech/glide/load/g;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/e/a;->r:Lcom/bumptech/glide/load/g;

    .line 548
    iget-object v1, v0, Lcom/bumptech/glide/e/a;->r:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lcom/bumptech/glide/e/a;->r:Lcom/bumptech/glide/load/g;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/g;->putAll(Lcom/bumptech/glide/load/g;)V

    .line 549
    new-instance v1, Lcom/bumptech/glide/g/b;

    invoke-direct {v1}, Lcom/bumptech/glide/g/b;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/e/a;->s:Ljava/util/Map;

    .line 550
    iget-object v1, v0, Lcom/bumptech/glide/e/a;->s:Ljava/util/Map;

    iget-object v2, p0, Lcom/bumptech/glide/e/a;->s:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 551
    iput-boolean v1, v0, Lcom/bumptech/glide/e/a;->u:Z

    .line 552
    iput-boolean v1, v0, Lcom/bumptech/glide/e/a;->w:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 555
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/lang/Class;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 575
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 579
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/bumptech/glide/e/a;->t:Ljava/lang/Class;

    .line 580
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 581
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public disallowHardwareConfig()Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 682
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/f;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/e/a;->set(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/b/j;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/j;",
            ")TT;"
        }
    .end annotation

    .line 225
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->diskCacheStrategy(Lcom/bumptech/glide/load/b/j;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 228
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/j;

    iput-object p1, p0, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/load/b/j;

    .line 229
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 231
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public dontAnimate()Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1108
    sget-object v0, Lcom/bumptech/glide/load/resource/d/i;->DISABLE_ANIMATION:Lcom/bumptech/glide/load/f;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/e/a;->set(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lcom/bumptech/glide/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1082
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->dontTransform()Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1087
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    const/4 v0, 0x0

    .line 1088
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->n:Z

    .line 1089
    iget v1, p0, Lcom/bumptech/glide/e/a;->a:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1090
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->o:Z

    .line 1091
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    const/4 v0, 0x1

    .line 1092
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->b:Z

    .line 1093
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")TT;"
        }
    .end annotation

    .line 695
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/bumptech/glide/load/f;

    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/e/a;->set(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")TT;"
        }
    .end annotation

    .line 603
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/c;->COMPRESSION_FORMAT:Lcom/bumptech/glide/load/f;

    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/e/a;->set(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public encodeQuality(I)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 613
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/c;->COMPRESSION_QUALITY:Lcom/bumptech/glide/load/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/e/a;->set(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1227
    instance-of v0, p1, Lcom/bumptech/glide/e/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1228
    check-cast p1, Lcom/bumptech/glide/e/a;

    .line 1229
    iget v0, p1, Lcom/bumptech/glide/e/a;->c:F

    iget v2, p0, Lcom/bumptech/glide/e/a;->c:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/e/a;->g:I

    iget v2, p1, Lcom/bumptech/glide/e/a;->g:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->f:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->f:Landroid/graphics/drawable/Drawable;

    .line 1231
    invoke-static {v0, v2}, Lcom/bumptech/glide/g/k;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/e/a;->i:I

    iget v2, p1, Lcom/bumptech/glide/e/a;->i:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->h:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->h:Landroid/graphics/drawable/Drawable;

    .line 1233
    invoke-static {v0, v2}, Lcom/bumptech/glide/g/k;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/e/a;->q:I

    iget v2, p1, Lcom/bumptech/glide/e/a;->q:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->p:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->p:Landroid/graphics/drawable/Drawable;

    .line 1235
    invoke-static {v0, v2}, Lcom/bumptech/glide/g/k;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->j:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/e/a;->j:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/e/a;->k:I

    iget v2, p1, Lcom/bumptech/glide/e/a;->k:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/e/a;->l:I

    iget v2, p1, Lcom/bumptech/glide/e/a;->l:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->n:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/e/a;->n:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->o:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/e/a;->o:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->x:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/e/a;->x:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->y:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/e/a;->y:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/load/b/j;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/load/b/j;

    .line 1243
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->e:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->e:Lcom/bumptech/glide/Priority;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->r:Lcom/bumptech/glide/load/g;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->r:Lcom/bumptech/glide/load/g;

    .line 1245
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->s:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->s:Ljava/util/Map;

    .line 1246
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->t:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->t:Ljava/lang/Class;

    .line 1247
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->m:Lcom/bumptech/glide/load/d;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->m:Lcom/bumptech/glide/load/d;

    .line 1248
    invoke-static {v0, v2}, Lcom/bumptech/glide/g/k;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->v:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lcom/bumptech/glide/e/a;->v:Landroid/content/res/Resources$Theme;

    .line 1249
    invoke-static {v0, p1}, Lcom/bumptech/glide/g/k;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public error(I)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 399
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->error(I)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 402
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/e/a;->g:I

    .line 403
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    const/4 p1, 0x0

    .line 405
    iput-object p1, p0, Lcom/bumptech/glide/e/a;->f:Landroid/graphics/drawable/Drawable;

    .line 406
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 408
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 375
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 379
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/e/a;->f:Landroid/graphics/drawable/Drawable;

    .line 380
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    const/4 p1, 0x0

    .line 382
    iput p1, p0, Lcom/bumptech/glide/e/a;->g:I

    .line 383
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 385
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public fallback(I)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 351
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->fallback(I)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 355
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/e/a;->q:I

    .line 356
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    const/4 p1, 0x0

    .line 358
    iput-object p1, p0, Lcom/bumptech/glide/e/a;->p:Landroid/graphics/drawable/Drawable;

    .line 359
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 361
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 320
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 324
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/e/a;->p:Landroid/graphics/drawable/Drawable;

    .line 325
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    const/4 p1, 0x0

    .line 327
    iput p1, p0, Lcom/bumptech/glide/e/a;->q:I

    .line 328
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit16 p1, p1, -0x4001

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 330
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public fitCenter()Lcom/bumptech/glide/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 776
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/o;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/o;-><init>()V

    const/4 v2, 0x1

    .line 2872
    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")TT;"
        }
    .end annotation

    .line 657
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->DECODE_FORMAT:Lcom/bumptech/glide/load/f;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/e/a;->set(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/resource/d/i;->DECODE_FORMAT:Lcom/bumptech/glide/load/f;

    .line 659
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/e/a;->set(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public frame(J)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 629
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/w;->TARGET_FRAME:Lcom/bumptech/glide/load/f;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/e/a;->set(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public final getDiskCacheStrategy()Lcom/bumptech/glide/load/b/j;
    .locals 1

    .line 1354
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/load/b/j;

    return-object v0
.end method

.method public final getErrorId()I
    .locals 1

    .line 1365
    iget v0, p0, Lcom/bumptech/glide/e/a;->g:I

    return v0
.end method

.method public final getErrorPlaceholder()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1360
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1387
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getFallbackId()I
    .locals 1

    .line 1381
    iget v0, p0, Lcom/bumptech/glide/e/a;->q:I

    return v0
.end method

.method public final getOnlyRetrieveFromCache()Z
    .locals 1

    .line 1453
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->y:Z

    return v0
.end method

.method public final getOptions()Lcom/bumptech/glide/load/g;
    .locals 1

    .line 1344
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->r:Lcom/bumptech/glide/load/g;

    return-object v0
.end method

.method public final getOverrideHeight()I
    .locals 1

    .line 1423
    iget v0, p0, Lcom/bumptech/glide/e/a;->k:I

    return v0
.end method

.method public final getOverrideWidth()I
    .locals 1

    .line 1415
    iget v0, p0, Lcom/bumptech/glide/e/a;->l:I

    return v0
.end method

.method public final getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1376
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPlaceholderId()I
    .locals 1

    .line 1370
    iget v0, p0, Lcom/bumptech/glide/e/a;->i:I

    return v0
.end method

.method public final getPriority()Lcom/bumptech/glide/Priority;
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->e:Lcom/bumptech/glide/Priority;

    return-object v0
.end method

.method public final getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1349
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->t:Ljava/lang/Class;

    return-object v0
.end method

.method public final getSignature()Lcom/bumptech/glide/load/d;
    .locals 1

    .line 1402
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->m:Lcom/bumptech/glide/load/d;

    return-object v0
.end method

.method public final getSizeMultiplier()F
    .locals 1

    .line 1427
    iget v0, p0, Lcom/bumptech/glide/e/a;->c:F

    return v0
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->v:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final getTransformations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/j<",
            "*>;>;"
        }
    .end annotation

    .line 1334
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->s:Ljava/util/Map;

    return-object v0
.end method

.method public final getUseAnimationPool()Z
    .locals 1

    .line 1447
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->z:Z

    return v0
.end method

.method public final getUseUnlimitedSourceGeneratorsPool()Z
    .locals 1

    .line 1441
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->x:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1256
    iget v0, p0, Lcom/bumptech/glide/e/a;->c:F

    invoke-static {v0}, Lcom/bumptech/glide/g/k;->hashCode(F)I

    move-result v0

    .line 1257
    iget v1, p0, Lcom/bumptech/glide/e/a;->g:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(II)I

    move-result v0

    .line 1258
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1259
    iget v1, p0, Lcom/bumptech/glide/e/a;->i:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(II)I

    move-result v0

    .line 1260
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1261
    iget v1, p0, Lcom/bumptech/glide/e/a;->q:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(II)I

    move-result v0

    .line 1262
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1263
    iget-boolean v1, p0, Lcom/bumptech/glide/e/a;->j:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(ZI)I

    move-result v0

    .line 1264
    iget v1, p0, Lcom/bumptech/glide/e/a;->k:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(II)I

    move-result v0

    .line 1265
    iget v1, p0, Lcom/bumptech/glide/e/a;->l:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(II)I

    move-result v0

    .line 1266
    iget-boolean v1, p0, Lcom/bumptech/glide/e/a;->n:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(ZI)I

    move-result v0

    .line 1267
    iget-boolean v1, p0, Lcom/bumptech/glide/e/a;->o:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(ZI)I

    move-result v0

    .line 1268
    iget-boolean v1, p0, Lcom/bumptech/glide/e/a;->x:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(ZI)I

    move-result v0

    .line 1269
    iget-boolean v1, p0, Lcom/bumptech/glide/e/a;->y:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(ZI)I

    move-result v0

    .line 1270
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/load/b/j;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1271
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->e:Lcom/bumptech/glide/Priority;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1272
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->r:Lcom/bumptech/glide/load/g;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1273
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->s:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1274
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->t:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1275
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->m:Lcom/bumptech/glide/load/d;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1276
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->v:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final isDiskCacheStrategySet()Z
    .locals 1

    const/4 v0, 0x4

    .line 1325
    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public final isLocked()Z
    .locals 1

    .line 593
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->u:Z

    return v0
.end method

.method public final isMemoryCacheable()Z
    .locals 1

    .line 1397
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->j:Z

    return v0
.end method

.method public final isPrioritySet()Z
    .locals 1

    const/16 v0, 0x8

    .line 1406
    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public final isSkipMemoryCacheSet()Z
    .locals 1

    const/16 v0, 0x100

    .line 1329
    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public final isTransformationAllowed()Z
    .locals 1

    .line 585
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->o:Z

    return v0
.end method

.method public final isTransformationRequired()Z
    .locals 1

    .line 1339
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->n:Z

    return v0
.end method

.method public final isTransformationSet()Z
    .locals 1

    const/16 v0, 0x800

    .line 589
    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public final isValidOverride()Z
    .locals 2

    .line 1419
    iget v0, p0, Lcom/bumptech/glide/e/a;->l:I

    iget v1, p0, Lcom/bumptech/glide/e/a;->k:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/g/k;->isValidDimensions(II)Z

    move-result v0

    return v0
.end method

.method public lock()Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1288
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->u:Z

    return-object p0
.end method

.method public onlyRetrieveFromCache(Z)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 198
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 202
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/e/a;->y:Z

    .line 203
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 205
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public optionalCenterCrop()Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 727
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/g;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public optionalCenterInside()Lcom/bumptech/glide/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 792
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>()V

    const/4 v2, 0x0

    .line 2878
    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public optionalCircleCrop()Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 822
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public optionalFitCenter()Lcom/bumptech/glide/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 759
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/o;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/o;-><init>()V

    const/4 v2, 0x0

    .line 1878
    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public optionalTransform(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 983
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/j<",
            "TY;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1027
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public override(I)Lcom/bumptech/glide/e/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 498
    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/e/a;->override(II)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public override(II)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 476
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/e/a;->override(II)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 480
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/e/a;->l:I

    .line 481
    iput p2, p0, Lcom/bumptech/glide/e/a;->k:I

    .line 482
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 484
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(I)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 289
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->placeholder(I)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 293
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/e/a;->i:I

    .line 294
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    const/4 p1, 0x0

    .line 296
    iput-object p1, p0, Lcom/bumptech/glide/e/a;->h:Landroid/graphics/drawable/Drawable;

    .line 297
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 299
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 264
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 268
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/e/a;->h:Landroid/graphics/drawable/Drawable;

    .line 269
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    const/4 p1, 0x0

    .line 271
    iput p1, p0, Lcom/bumptech/glide/e/a;->i:I

    .line 272
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 274
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")TT;"
        }
    .end annotation

    .line 243
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 247
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/Priority;

    iput-object p1, p0, Lcom/bumptech/glide/e/a;->e:Lcom/bumptech/glide/Priority;

    .line 248
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 250
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/f<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    .line 562
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/e/a;->set(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 566
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-static {p2}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->r:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/g;->set(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/load/g;

    .line 569
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public signature(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d;",
            ")TT;"
        }
    .end annotation

    .line 515
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->signature(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 519
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/d;

    iput-object p1, p0, Lcom/bumptech/glide/e/a;->m:Lcom/bumptech/glide/load/d;

    .line 520
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 521
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->sizeMultiplier(F)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 134
    iput p1, p0, Lcom/bumptech/glide/e/a;->c:F

    .line 135
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 137
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 132
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 454
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/e/a;->skipMemoryCache(Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    .line 458
    iput-boolean p1, p0, Lcom/bumptech/glide/e/a;->j:Z

    .line 459
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 461
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    .line 432
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 436
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/e/a;->v:Landroid/content/res/Resources$Theme;

    .line 437
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 439
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public timeout(I)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 712
    sget-object v0, Lcom/bumptech/glide/load/c/a/a;->TIMEOUT:Lcom/bumptech/glide/load/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/e/a;->set(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 912
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/j<",
            "TY;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1071
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public varargs transform([Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 933
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 934
    new-instance v0, Lcom/bumptech/glide/load/e;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/e;-><init>([Lcom/bumptech/glide/load/j;)V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 935
    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 936
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e/a;->transform(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 938
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public varargs transforms([Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 963
    new-instance v0, Lcom/bumptech/glide/load/e;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/e;-><init>([Lcom/bumptech/glide/load/j;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public useAnimationPool(Z)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 181
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->useAnimationPool(Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 185
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/e/a;->z:Z

    .line 186
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 188
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 155
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 159
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/e/a;->x:Z

    .line 160
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 162
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method
