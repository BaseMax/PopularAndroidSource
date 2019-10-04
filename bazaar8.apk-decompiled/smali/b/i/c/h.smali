.class public Lb/i/c/h;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Lb/i/c/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/c/j;->a([Lb/i/h/f$b;I)Lb/i/h/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/i/c/j$a<",
        "Lb/i/h/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/i/c/j;


# direct methods
.method public constructor <init>(Lb/i/c/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/i/c/h;->a:Lb/i/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/i/h/f$b;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lb/i/h/f$b;->d()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lb/i/h/f$b;

    invoke-virtual {p0, p1}, Lb/i/c/h;->a(Lb/i/h/f$b;)I

    move-result p1

    return p1
.end method

.method public b(Lb/i/h/f$b;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Lb/i/h/f$b;->e()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lb/i/h/f$b;

    invoke-virtual {p0, p1}, Lb/i/c/h;->b(Lb/i/h/f$b;)Z

    move-result p1

    return p1
.end method
