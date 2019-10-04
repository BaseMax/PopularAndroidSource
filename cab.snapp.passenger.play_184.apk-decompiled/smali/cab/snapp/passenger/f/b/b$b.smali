.class public final Lcab/snapp/passenger/f/b/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/f/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcab/snapp/passenger/f/b/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    new-instance v0, Lcab/snapp/passenger/f/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b$a;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/f/b/b$b;->a:Lcab/snapp/passenger/f/b/b$a;

    return-void
.end method


# virtual methods
.method public final build()Lcab/snapp/passenger/f/b/b$a;
    .locals 2

    .line 591
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b$b;->a:Lcab/snapp/passenger/f/b/b$a;

    .line 3431
    iget-object v0, v0, Lcab/snapp/passenger/f/b/b$a;->c:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b$b;->a:Lcab/snapp/passenger/f/b/b$a;

    return-object v0

    .line 593
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please specify the application with <ConfigBuilder.with()> method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final supportAdjust(Lcom/adjust/sdk/AdjustConfig;)Lcab/snapp/passenger/f/b/b$b;
    .locals 1

    .line 532
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b$b;->a:Lcab/snapp/passenger/f/b/b$a;

    .line 2421
    iput-object p1, v0, Lcab/snapp/passenger/f/b/b$a;->b:Lcom/adjust/sdk/AdjustConfig;

    return-object p0
.end method

.method public final supportAppmetrica(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b$b;
    .locals 1

    .line 580
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b$b;->a:Lcab/snapp/passenger/f/b/b$a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/b/b$a;->supportAppmetrica(Ljava/lang/String;)V

    return-object p0
.end method

.method public final supportFirebase()Lcab/snapp/passenger/f/b/b$b;
    .locals 1

    .line 568
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b$b;->a:Lcab/snapp/passenger/f/b/b$a;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b$a;->supportFirebase()V

    return-object p0
.end method

.method public final supportLifeCycleCallback(Landroid/app/Application$ActivityLifecycleCallbacks;)Lcab/snapp/passenger/f/b/b$b;
    .locals 1

    .line 544
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b$b;->a:Lcab/snapp/passenger/f/b/b$a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/b/b$a;->setLifeCycleCallback(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-object p0
.end method

.method public final supportWebEngage(Ljava/lang/String;Z)Lcab/snapp/passenger/f/b/b$b;
    .locals 1

    .line 557
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b$b;->a:Lcab/snapp/passenger/f/b/b$a;

    .line 3359
    iput-object p1, v0, Lcab/snapp/passenger/f/b/b$a;->d:Ljava/lang/String;

    .line 3360
    iput-boolean p2, v0, Lcab/snapp/passenger/f/b/b$a;->f:Z

    const/4 p1, 0x1

    .line 3361
    iput-boolean p1, v0, Lcab/snapp/passenger/f/b/b$a;->a:Z

    return-object p0
.end method

.method public final with(Landroid/app/Application;)Lcab/snapp/passenger/f/b/b$b;
    .locals 1

    .line 520
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b$b;->a:Lcab/snapp/passenger/f/b/b$a;

    .line 1441
    iput-object p1, v0, Lcab/snapp/passenger/f/b/b$a;->c:Landroid/app/Application;

    return-object p0
.end method
