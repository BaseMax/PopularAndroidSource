.class public Lb/i/b/a/g;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/b/a/h$a;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lb/i/b/a/h$a;


# direct methods
.method public constructor <init>(Lb/i/b/a/h$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/i/b/a/g;->b:Lb/i/b/a/h$a;

    iput p2, p0, Lb/i/b/a/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/i/b/a/g;->b:Lb/i/b/a/h$a;

    iget v1, p0, Lb/i/b/a/g;->a:I

    invoke-virtual {v0, v1}, Lb/i/b/a/h$a;->a(I)V

    return-void
.end method
