.class public final Lb/i/h/c;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Lb/i/h/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/h/f;->a(Landroid/content/Context;Lb/i/h/a;Lb/i/b/a/h$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/i/h/k$a<",
        "Lb/i/h/f$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/i/b/a/h$a;

.field public final synthetic b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lb/i/b/a/h$a;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/i/h/c;->a:Lb/i/b/a/h$a;

    iput-object p2, p0, Lb/i/h/c;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/i/h/f$c;)V
    .locals 2

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lb/i/h/c;->a:Lb/i/b/a/h$a;

    const/4 v0, 0x1

    iget-object v1, p0, Lb/i/h/c;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lb/i/b/a/h$a;->a(ILandroid/os/Handler;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p1, Lb/i/h/f$c;->b:I

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lb/i/h/c;->a:Lb/i/b/a/h$a;

    iget-object p1, p1, Lb/i/h/f$c;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, Lb/i/h/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lb/i/b/a/h$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lb/i/h/c;->a:Lb/i/b/a/h$a;

    iget-object v1, p0, Lb/i/h/c;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lb/i/b/a/h$a;->a(ILandroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lb/i/h/f$c;

    invoke-virtual {p0, p1}, Lb/i/h/c;->a(Lb/i/h/f$c;)V

    return-void
.end method
