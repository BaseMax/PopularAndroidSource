.class public Lb/i/h/h;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/h/i;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lb/i/h/i;


# direct methods
.method public constructor <init>(Lb/i/h/i;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/i/h/h;->b:Lb/i/h/i;

    iput-object p2, p0, Lb/i/h/h;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/i/h/h;->b:Lb/i/h/i;

    iget-object v0, v0, Lb/i/h/i;->c:Lb/i/h/k$a;

    iget-object v1, p0, Lb/i/h/h;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lb/i/h/k$a;->a(Ljava/lang/Object;)V

    return-void
.end method
