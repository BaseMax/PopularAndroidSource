.class public Lcab/snapp/passenger/units/search/SearchController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/search/a;",
        "Lcab/snapp/passenger/units/search/c;",
        "Lcab/snapp/passenger/units/search/SearchView;",
        "Lcab/snapp/passenger/units/search/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_IS_PUSHED_FOR:Ljava/lang/String; = "Key Is Pushed For"

.field public static final KEY_SEARCH_REQUEST_CODE:Ljava/lang/String; = "Key Search Request Code"

.field public static final SEARCH_GEOCODE:I = 0x0

.field public static final SET_DESTINATION:I = 0x2

.field public static final SET_ORIGIN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 1

    .line 1068
    new-instance v0, Lcab/snapp/passenger/units/search/c;

    invoke-direct {v0}, Lcab/snapp/passenger/units/search/c;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2062
    new-instance v0, Lcab/snapp/passenger/units/search/e;

    invoke-direct {v0}, Lcab/snapp/passenger/units/search/e;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/search/a;",
            ">;"
        }
    .end annotation

    .line 74
    const-class v0, Lcab/snapp/passenger/units/search/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00cd

    return v0
.end method
