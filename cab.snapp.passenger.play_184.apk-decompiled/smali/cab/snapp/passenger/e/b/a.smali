.class public final Lcab/snapp/passenger/e/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideReportHelper(Landroid/app/Application;)Lcab/snapp/passenger/f/b/b/c;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 27
    new-instance v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-direct {v0, p1}, Lcab/snapp/passenger/f/b/b/c;-><init>(Landroid/app/Application;)V

    return-object v0
.end method

.method public final provideShowcaseHelper()Lcab/snapp/passenger/f/o;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 20
    new-instance v0, Lcab/snapp/passenger/f/o;

    invoke-direct {v0}, Lcab/snapp/passenger/f/o;-><init>()V

    return-object v0
.end method
