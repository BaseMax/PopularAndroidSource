.class public final Lc/c/a/e/d/a/b/a/f;
.super Ljava/lang/Object;
.source "LogoutRequestDto.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.logoutRequest"
.end annotation


# instance fields
.field public final refreshToken:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "refreshToken"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "refreshToken"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/a/b/a/f;->refreshToken:Ljava/lang/String;

    return-void
.end method
