.class public final Ll/z$b;
.super Ll/z;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ll/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ll/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/j<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ll/j;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ll/j<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ll/z;-><init>()V

    const-string v0, "name == null"

    .line 2
    invoke-static {p1, v0}, Ll/H;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Ll/z$b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ll/z$b;->b:Ll/j;

    .line 4
    iput-boolean p3, p0, Ll/z$b;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ll/B;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/B;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Ll/z$b;->b:Ll/j;

    invoke-interface {v0, p2}, Ll/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Ll/z$b;->a:Ljava/lang/String;

    iget-boolean v1, p0, Ll/z$b;->c:Z

    invoke-virtual {p1, v0, p2, v1}, Ll/B;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
