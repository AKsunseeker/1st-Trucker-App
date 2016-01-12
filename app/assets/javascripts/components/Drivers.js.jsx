class Drivers extends React.Component{

  constructor(props){
    super(props);
    this.state = {drivers: []};
  }

  componentDidMount(){
    $.ajax({
      url: '/drivers',
      type: 'GET'
    }).success( data => {
      this.setState({drivers: data.drivers})
    });

  }


 
  render(){
    
    return(<div>
            <p>Herrow</p>
            </div>);
  }
  




}