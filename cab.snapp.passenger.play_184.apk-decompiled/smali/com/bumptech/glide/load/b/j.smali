.class public abstract Lcom/bumptech/glide/load/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:Lcom/bumptech/glide/load/b/j;

.field public static final AUTOMATIC:Lcom/bumptech/glide/load/b/j;

.field public static final DATA:Lcom/bumptech/glide/load/b/j;

.field public static final NONE:Lcom/bumptech/glide/load/b/j;

.field public static final RESOURCE:Lcom/bumptech/glide/load/b/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/bumptech/glide/load/b/j$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/j$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/j;->ALL:Lcom/bumptech/glide/load/b/j;

    .line 41
    new-instance v0, Lcom/bumptech/glide/load/b/j$2;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/j$2;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/j;->NONE:Lcom/bumptech/glide/load/b/j;

    .line 67
    new-instance v0, Lcom/bumptech/glide/load/b/j$3;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/j$3;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/j;->DATA:Lcom/bumptech/glide/load/b/j;

    .line 93
    new-instance v0, Lcom/bumptech/glide/load/b/j$4;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/j$4;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/j;->RESOURCE:Lcom/bumptech/glide/load/b/j;

    .line 123
    new-instance v0, Lcom/bumptech/glide/load/b/j$5;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/j$5;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/j;->AUTOMATIC:Lcom/bumptech/glide/load/b/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decodeCachedData()Z
.end method

.method public abstract decodeCachedResource()Z
.end method

.method public abstract isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z
.end method

.method public abstract isResourceCacheable(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
.end method
