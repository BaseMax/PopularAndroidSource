.class public final Lcom/bumptech/glide/load/resource/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/e/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/e/e<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/e/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/bumptech/glide/load/resource/e/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/e/g;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/e/g;->a:Lcom/bumptech/glide/load/resource/e/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/load/resource/e/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/e/e<",
            "TZ;TZ;>;"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/bumptech/glide/load/resource/e/g;->a:Lcom/bumptech/glide/load/resource/e/g;

    return-object v0
.end method


# virtual methods
.method public final transcode(Lcom/bumptech/glide/load/b/v;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/v<",
            "TZ;>;",
            "Lcom/bumptech/glide/load/g;",
            ")",
            "Lcom/bumptech/glide/load/b/v<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
