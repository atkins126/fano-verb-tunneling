(*!------------------------------------------------------------
 * [[APP_NAME]] ([[APP_URL]])
 *
 * @link      [[APP_REPOSITORY_URL]]
 * @copyright Copyright (c) [[COPYRIGHT_YEAR]] [[COPYRIGHT_HOLDER]]
 * @license   [[LICENSE_URL]] ([[LICENSE]])
 *------------------------------------------------------------- *)
unit DeleteControllerFactory;

interface

uses
    fano;

type

    (*!-----------------------------------------------
     * Factory for controller TDeleteController
     *
     * @author [[AUTHOR_NAME]] <[[AUTHOR_EMAIL]]>
     *------------------------------------------------*)
    TDeleteControllerFactory = class(TFactory, IDependencyFactory)
    public
        function build(const container : IDependencyContainer) : IDependency; override;
    end;

implementation

uses
    sysutils,

    {*! -------------------------------
        unit interfaces
    ----------------------------------- *}
    DeleteController;

    function TDeleteControllerFactory.build(const container : IDependencyContainer) : IDependency;
    begin
        //build your controller instance here.
        //container will gives you access to all registered services
        result := TDeleteController.create();
    end;
end.
