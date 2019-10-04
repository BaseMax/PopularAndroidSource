.class public final Lb/i/a/e;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/a/h;->a(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/i/a/h$a;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb/i/a/h$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/i/a/e;->a:Lb/i/a/h$a;

    iput-object p2, p0, Lb/i/a/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/i/a/e;->a:Lb/i/a/h$a;

    iget-object v1, p0, Lb/i/a/e;->b:Ljava/lang/Object;

    iput-object v1, v0, Lb/i/a/h$a;->a:Ljava/lang/Object;

    return-void
.end method
