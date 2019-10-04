.class public Lb/H/a/k$a;
.super Lb/z/a/a;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lb/z/a/a;-><init>(II)V

    .line 2
    iput-object p1, p0, Lb/H/a/k$a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/b;)V
    .locals 1

    .line 1
    new-instance p1, Lb/H/a/d/g;

    iget-object v0, p0, Lb/H/a/k$a;->c:Landroid/content/Context;

    invoke-direct {p1, v0}, Lb/H/a/d/g;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lb/H/a/d/g;->a(Z)V

    return-void
.end method
