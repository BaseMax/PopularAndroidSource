.class public Lb/i/c/i;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Lb/i/c/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/c/j;->a(Lb/i/b/a/c$b;I)Lb/i/b/a/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/i/c/j$a<",
        "Lb/i/b/a/c$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/i/c/j;


# direct methods
.method public constructor <init>(Lb/i/c/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/i/c/i;->a:Lb/i/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/i/b/a/c$c;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lb/i/b/a/c$c;->e()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lb/i/b/a/c$c;

    invoke-virtual {p0, p1}, Lb/i/c/i;->a(Lb/i/b/a/c$c;)I

    move-result p1

    return p1
.end method

.method public b(Lb/i/b/a/c$c;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Lb/i/b/a/c$c;->f()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lb/i/b/a/c$c;

    invoke-virtual {p0, p1}, Lb/i/c/i;->b(Lb/i/b/a/c$c;)Z

    move-result p1

    return p1
.end method
