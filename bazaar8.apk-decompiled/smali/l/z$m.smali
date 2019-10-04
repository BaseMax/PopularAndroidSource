.class public final Ll/z$m;
.super Ll/z;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll/z<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/B;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "@Url parameter is null."

    .line 1
    invoke-static {p2, v0}, Ll/H;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1, p2}, Ll/B;->a(Ljava/lang/Object;)V

    return-void
.end method
