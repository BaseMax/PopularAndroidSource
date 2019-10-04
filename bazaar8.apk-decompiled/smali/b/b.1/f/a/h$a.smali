.class public Lb/b/f/a/h$a;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/f/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Lb/b/g/P;

.field public final b:Lb/b/f/a/k;

.field public final c:I


# direct methods
.method public constructor <init>(Lb/b/g/P;Lb/b/f/a/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/b/f/a/h$a;->a:Lb/b/g/P;

    .line 3
    iput-object p2, p0, Lb/b/f/a/h$a;->b:Lb/b/f/a/k;

    .line 4
    iput p3, p0, Lb/b/f/a/h$a;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/h$a;->a:Lb/b/g/P;

    invoke-virtual {v0}, Lb/b/g/N;->f()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
