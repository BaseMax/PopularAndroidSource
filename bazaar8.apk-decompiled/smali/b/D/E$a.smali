.class public Lb/D/E$a;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/D/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:Lb/D/M;

.field public d:Lb/D/ka;

.field public e:Lb/D/E;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lb/D/E;Lb/D/ka;Lb/D/M;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/D/E$a;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lb/D/E$a;->b:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lb/D/E$a;->c:Lb/D/M;

    .line 5
    iput-object p4, p0, Lb/D/E$a;->d:Lb/D/ka;

    .line 6
    iput-object p3, p0, Lb/D/E$a;->e:Lb/D/E;

    return-void
.end method
