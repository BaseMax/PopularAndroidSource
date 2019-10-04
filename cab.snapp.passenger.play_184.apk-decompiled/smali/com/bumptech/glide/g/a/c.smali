.class public abstract Lcom/bumptech/glide/g/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/g/a/c$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/bumptech/glide/g/a/c;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/bumptech/glide/g/a/c;
    .locals 1

    .line 20
    new-instance v0, Lcom/bumptech/glide/g/a/c$a;

    invoke-direct {v0}, Lcom/bumptech/glide/g/a/c$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract setRecycled(Z)V
.end method

.method public abstract throwIfRecycled()V
.end method
