.class final Lcab/snapp/passenger/units/footer/mainfooter/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/footer/mainfooter/a;->onUnitCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/e/g<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/footer/mainfooter/a;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/footer/mainfooter/a;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/mainfooter/a$1;->a:Lcab/snapp/passenger/units/footer/mainfooter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/mainfooter/a$1;->a:Lcab/snapp/passenger/units/footer/mainfooter/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/mainfooter/a;->a(Lcab/snapp/passenger/units/footer/mainfooter/a;)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/mainfooter/a$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
