.class public Lc/e/c/b/p$b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@16.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/c/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/e/c/b/p$b;->a:Ljava/lang/Class;

    .line 4
    iput-boolean p2, p0, Lc/e/c/b/p$b;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;ZLc/e/c/b/o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/e/c/b/p$b;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method

.method public static synthetic a(Lc/e/c/b/p$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/e/c/b/p$b;->b:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lc/e/c/b/p$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc/e/c/b/p$b;

    .line 3
    iget-object v0, p1, Lc/e/c/b/p$b;->a:Ljava/lang/Class;

    iget-object v2, p0, Lc/e/c/b/p$b;->a:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lc/e/c/b/p$b;->b:Z

    iget-boolean v0, p0, Lc/e/c/b/p$b;->b:Z

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/c/b/p$b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-boolean v1, p0, Lc/e/c/b/p$b;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method