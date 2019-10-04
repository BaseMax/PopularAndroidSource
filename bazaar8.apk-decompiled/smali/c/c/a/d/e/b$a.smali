.class public final Lc/c/a/d/e/b$a;
.super Ljava/lang/Object;
.source "NetworkReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/d/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/d/e/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Li/a/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/c/a/d/e/b;->b()Li/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, Li/a/b/p;->b()Li/a/b/t;

    move-result-object v0

    return-object v0
.end method
