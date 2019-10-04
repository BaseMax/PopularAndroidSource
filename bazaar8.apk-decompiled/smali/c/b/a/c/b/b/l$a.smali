.class public final Lc/b/a/c/b/b/l$a;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"

# interfaces
.implements Lc/b/a/i/a/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/b/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/security/MessageDigest;

.field public final b:Lc/b/a/i/a/g;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lc/b/a/i/a/g;->a()Lc/b/a/i/a/g;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/c/b/b/l$a;->b:Lc/b/a/i/a/g;

    .line 3
    iput-object p1, p0, Lc/b/a/c/b/b/l$a;->a:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public f()Lc/b/a/i/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/b/l$a;->b:Lc/b/a/i/a/g;

    return-object v0
.end method
