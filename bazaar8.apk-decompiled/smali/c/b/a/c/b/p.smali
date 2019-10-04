.class public abstract Lc/b/a/c/b/p;
.super Ljava/lang/Object;
.source "DiskCacheStrategy.java"


# static fields
.field public static final a:Lc/b/a/c/b/p;

.field public static final b:Lc/b/a/c/b/p;

.field public static final c:Lc/b/a/c/b/p;

.field public static final d:Lc/b/a/c/b/p;

.field public static final e:Lc/b/a/c/b/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/c/b/k;

    invoke-direct {v0}, Lc/b/a/c/b/k;-><init>()V

    sput-object v0, Lc/b/a/c/b/p;->a:Lc/b/a/c/b/p;

    .line 2
    new-instance v0, Lc/b/a/c/b/l;

    invoke-direct {v0}, Lc/b/a/c/b/l;-><init>()V

    sput-object v0, Lc/b/a/c/b/p;->b:Lc/b/a/c/b/p;

    .line 3
    new-instance v0, Lc/b/a/c/b/m;

    invoke-direct {v0}, Lc/b/a/c/b/m;-><init>()V

    sput-object v0, Lc/b/a/c/b/p;->c:Lc/b/a/c/b/p;

    .line 4
    new-instance v0, Lc/b/a/c/b/n;

    invoke-direct {v0}, Lc/b/a/c/b/n;-><init>()V

    sput-object v0, Lc/b/a/c/b/p;->d:Lc/b/a/c/b/p;

    .line 5
    new-instance v0, Lc/b/a/c/b/o;

    invoke-direct {v0}, Lc/b/a/c/b/o;-><init>()V

    sput-object v0, Lc/b/a/c/b/p;->e:Lc/b/a/c/b/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract a(Lcom/bumptech/glide/load/DataSource;)Z
.end method

.method public abstract a(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
.end method

.method public abstract b()Z
.end method
