.class public Lb/w/i;
.super Lb/a/d;
.source "NavController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/w/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/w/j;


# direct methods
.method public constructor <init>(Lb/w/j;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/w/i;->c:Lb/w/j;

    invoke-direct {p0, p2}, Lb/a/d;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/w/i;->c:Lb/w/j;

    invoke-virtual {v0}, Lb/w/j;->i()Z

    return-void
.end method
